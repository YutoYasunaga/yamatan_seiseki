class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update]

  def index
    @q = Student.ransack(params[:q])
    if params[:q] == nil
      @students = Student.where(enter_school_year: Time.now.year)
    else
      @students = @q.result(distinct: true)
    end
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
      flash[:success] = '新しい学生が作成されました！'
    end
  end

  def update
    if @student.update_attributes(student_params)
      redirect_to students_path
      flash[:success] = '学生情報が更新されました！'
    end
  end

  def account_setting
    @student = current_student
  end

  def account_update
    @student = current_student
    if @student.update_attributes(account_setting_params)
      redirect_to root_path
      flash[:success] = "パスワードが更新されました！<br>新しいパスワードは<b>#{params[:student][:password]}</b>です。"
    else
      render 'account_setting'
    end
  end


  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :code, :department, :image, :status, :enter_school_year, :password, :password_confirmation)
  end

  def account_setting_params
    params.require(:student).permit(:password, :password_confirmation)
  end
end
