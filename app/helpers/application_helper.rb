module ApplicationHelper
  
  def full_title(page_title = '')
    base_title = 'School Index'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def error_message_for(object)
    render(partial: 'layout/error_messages', locals: { object: object })
  end
end
