module ApplicationHelper
  #--------------------------------------------------------
  # Menu
  #--------------------------------------------------------

  # helper usado en el menú
  # text texto que ve el usuario
  # route ruta rails
  # controller nombre del controller escrito manualmente
  def link_to_unless_controller(text, route, controller)
    current_controller_detector(text, route, controller)
  end



  # si no coincide el controller con el current controller se llamará el método normal_link
  def current_controller_detector(text, route, controller)
    if params[:controller] == "#{controller}"
      normal_link_prevent_default(text, route)
    else
      normal_link(text, route)
    end
  end

  # link normal
  def normal_link(text, route)
      link_to content_tag(:span, "#{text}"), route
  end

  # cuando esté en el current controller se renderizará un span en vez de un anchor
  def normal_link_prevent_default(text, route)
    content_tag :b do
      content_tag(:i, "#{text}")
    end
  end

  # extra
  def link_to_unless_content_type(text, route, column, content_type)
    current_content_type_detector(text, route, column, content_type)
  end

  def current_content_type_detector(text, route, column, content_type)
    if "#{column}" == "#{content_type}"
      normal_link_prevent_default(text, route)
    else
      normal_link(text, route)
    end
  end



  # párrafos
  def paragraph(text)
   "#{sanitize(simple_format(text), :tags => %w(p i br b))}".html_safe 
  end

  def paragraph_truncate(text, length)
    "#{sanitize(simple_format(truncate(text, :length => length)), :tags => %w(p i br b))}".html_safe
  end


  # sortable
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
  end

end
