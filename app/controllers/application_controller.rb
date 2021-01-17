class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:slack_name, :corse_id])
      #サインアップ時にdeviseのnameのカラムのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      #ユーザーページの編集の際にnameとplofileのストロングパラメータを追加する
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, :image])
    end

end
