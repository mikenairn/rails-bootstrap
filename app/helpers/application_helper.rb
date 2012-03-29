module ApplicationHelper
  def button_for(name, action, text=nil, link_options=nil, image_options=nil)
    image_options ||= {}
    link_options ||= {:class => 'btn'}
    case action
      when :back
        image_options[:class] = "icon-chevron-left"
      when :edit
        image_options[:class] = "icon-edit"
      when :delete
        link_options[:method] = "delete"
        link_options[:confirm] = "Are you sure?"
        link_options[:class] += " btn-danger"
        image_options[:class] = "icon-trash icon-white"
    end

    link_to name, link_options do
      content_tag(:i, nil, image_options) + (text.html_safe if text)
    end
  end
end
