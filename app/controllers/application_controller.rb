class ApplicationController < ActionController::Base
  include Pundit 

  rescue_from Pundit::NotAuthorizedError, with: :not_authorized

  def not_authorized
    redirect_to root_path, notice: "You are not authorized to edit this article"
  end

end