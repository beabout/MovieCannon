class ApplicationController < ActionController::Base
  include Controller::ErrorHandling
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

end
