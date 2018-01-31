class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def render_404 doc_format: :json, message: "Not found!"
    case doc_format
    when :json
      render json: {message: message}, status: 404
    when :html
      render file: "#{Rails.root}#{"/public/404.html"}", layout: false, status: 404
    end
  end
end
