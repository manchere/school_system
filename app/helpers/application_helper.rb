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
    render(partial: 'layouts/error_messages', locals: { object: object })
  end

  def nav_exclude_render(navbar, controller, *actions)
    if controller_name != controller && actions.any?{ |action| action != action_name }
      render partial: navbar unless render navbar
    end
  end
  
end
