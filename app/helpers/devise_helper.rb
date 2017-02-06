module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join

    html = <<-HTML
      <div class="alert alert-danger col-xs-12"> 
        <span class="glyphicon glyphicon-warning-sign" aria-hidden="true"></span>
        <span>&nbsp; Операция не была завершена успешно:</span>
        <ul class="alert-list">
          #{messages}
        </ul>  
      </div>
    HTML

    html.html_safe
  end
end