class SettingsController < ApplicationController

  def change_registration_status
    if params[:status] == 'on'
      Setting.registration_status = 'on'
    else
      Setting.registration_status = 'off'
      Registration.delete_all
    end
    redirect_to root_path
    flash[:success] = "設定しました！"
  end
end
