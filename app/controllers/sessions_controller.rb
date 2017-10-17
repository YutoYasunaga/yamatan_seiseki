class SessionsController < ApplicationController
  def create
    if params[:role] == 'teacher'
      teacher = Teacher.find_by_code(params[:code])
      if teacher && teacher.authenticate(params[:password])
        session[:teacher_id] = teacher.id
        redirect_to root_path
        flash[:success] = "<b>#{teacher.name}先生</b>としてログインしました！"
      else
        redirect_to sign_in_path(role: params[:role])
        flash[:danger] = '教員番号またはパスワードが違います！'
      end
    else
      student = Student.find_by_code(params[:code])
      if student && student.authenticate(params[:password])
        session[:student_id] = student.id
        redirect_to root_path
        flash[:success] = "<b>#{student.name}さん</b>としてログインしました！"
      else
        redirect_to sign_in_path(role: params[:role])
        flash[:danger] = '学籍番号またはパスワードが違います！'
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
