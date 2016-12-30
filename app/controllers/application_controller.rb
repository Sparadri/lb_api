class ApplicationController < ActionController::API
  # before_action :verify_api_key

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :null_session

  private

  def verify_api_key
    # api key to be put in application.yml for secret
    if request.headers["HTTP_X_WEB_TOKEN"] != "lebardaweb"
      render json: {
        error: "Unauthorized API Connection. Please Contact Le Barda."
      }, status: :unauthorized
    end
  end
end
