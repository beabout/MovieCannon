module Controller::ErrorHandling
  extend ActiveSupport::Concern

  def render_404(exception = nil)
    if exception
      logger.info "Rendering 404: #{exception.message}"
    end

    render template: 'errors/not_found.html.haml', status: 404
  end
end
