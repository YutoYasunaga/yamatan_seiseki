class SessionsController < ApplicationController
  def create
    if params[:role] == 'teacher'
      teacher = Teacher.find_by_code(params[:code])
      if teacher && teacher.authenticate(params[:password])
        session[:teacher_id] = teacher.id
        redirect_to root_path
        flash[:success] = "#{teacher.name}先生としてログインしました！"
      else
        redirect_to sign_in_path(role: params[:role])
        flash[:danger] = '教員番号またはパスワードが違います！'
      end
    end
  end

  def destroy
    session[:teacher_id] = nil
    session[:student_id] = nil
    redirect_to root_path
    flash[:success] = 'ログアウトしました！'
  end
end
