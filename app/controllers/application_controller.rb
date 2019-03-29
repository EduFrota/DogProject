class ApplicationController < ActionController::Base

 include Pundit
 protect_from_forgery with: :exception



# layout :layout_by_resource
#
#  def layout_by_resource
#    if devise_controller?
#      "devise"
#    else
#      "application"
#    end
#  end

rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
private
  def user_not_authorized
    flash[:notice] = 'Você não tem permissão para fazer esta ação'
    redirect_to(request.referrer || root_path)
  end

  def favorite_text
    return @favorite_exists ? "UnFavorite" : "Favorite"
  end
  helper_method :favorite_text


 protected
 def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
     devise_parameter_sanitizer.permit(:account_update, keys: [:name])
     devise_parameter_sanitizer.permit(:account_update, keys: [:city])
     devise_parameter_sanitizer.permit(:account_update, keys: [:state])
     devise_parameter_sanitizer.permit(:account_update, keys: [:phone])
  end
 end
