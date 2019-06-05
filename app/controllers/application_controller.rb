class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  include Controller::ErrorHandling
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

end
