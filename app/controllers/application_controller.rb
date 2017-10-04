class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_teacher
    @current_teacher ||= Teacher.find(session[:teacher_id]) if session[:teacher_id]
  end

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  helper_method :current_teacher, :current_student

end
