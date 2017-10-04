class StudiesController < ApplicationController

  def new
    @study = Study.new
  end

  def edit
    @study = Study.find(params[:id])
    @student = Student.find(params[:student_id])
  end

  def create
    student = Student.find(params[:study][:student_id])
    @study = Study.new(study_params)
    if @study.save
      redirect_to view_result_path(code: student.code)
      flash[:success] = "「#{@study.subject.name}」の成績が作成されました！"
    end
  end

  def update
    student = Student.find(params[:study][:student_id])
    @study = Study.find(params[:id])
    if @study.update_attributes(study_params)
      redirect_to view_result_path(code: student.code)
      flash[:success] = "「#{@study.subject.name}」の成績が更新されました！"
    end
  end

  def destroy
    student = Student.find(params[:student_id])
    @study = Study.find(params[:id])
    @study.destroy
    redirect_to view_result_path(code: student.code)
    flash[:success] = "「#{@study.subject.name}」の成績が削除されました！"
  end

  private

  def study_params
    params.require(:study).permit(:subject_id, :student_id, :status, :score)
  end
end
