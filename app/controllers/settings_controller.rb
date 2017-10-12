class SettingsController < ApplicationController

  def change_registration_status
    if params[:status] == 'on'
      Setting.registration_status = 'on'
      flash[:success] = "履修登録をオンしました！"
    else
      Setting.registration_status = 'off'
      Registration.delete_all
      flash[:warning] = "履修登録をオフしました！"
    end
    redirect_to root_path
  end
end
