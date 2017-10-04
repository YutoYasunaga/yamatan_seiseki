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

  def view_result
    @student = Student.find_by_code(params[:code])
    @results = Study.where(student_id: @student.id)
    @basic_results = @results.joins(:subject).where("subjects.division = ?", '基礎').order('section, name')
    @major_results = @results.joins(:subject).where("subjects.division = ?", '専門').order('section, name')
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :code, :department, :image, :status, :enter_school_year, :password, :password_confirmation)
  end
end
