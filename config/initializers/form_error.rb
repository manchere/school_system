ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  fragment = Nokogiri::HTML::DocumentFragment.parse(html_tag)
  field = fragment.at('input,select,textarea')
  model = instance.object
  error_message = model.errors.full_messages.join(', ')
  
  html = if field
            field['class'] = "#{field['class']} invalid"
            html = <<-HTML
            #{fragment.to_s}
            <p class="text-danger">#{error_message}</p>
            HTML
            html
         else
            html_tag
         end

  html.html_safe
end

