class TeachersController < ApplicationController
  before_action :set_teacher, only: [:edit, :update]

  def index
    @teachers = Teacher.all.order('status')
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teachers_path
      flash[:success] = '新しい教員が作成されました！'
    end
  end

  def update
    if @teacher.update_attributes(teacher_params)
      redirect_to teachers_path
      flash[:success] = '教員情報が更新されました！'
    end
  end

  def view_subject
    @teacher = Teacher.find_by_code(params[:code])
    @subjects = Subject.where(teacher: @teacher)
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :code, :department, :status, :image, :password, :password_confirmation)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
