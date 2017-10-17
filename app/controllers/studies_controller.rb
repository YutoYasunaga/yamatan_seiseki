class StudiesController < ApplicationController

  after_action :update_status, only: [:create, :update]

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

  def edit_results
    @subject = Subject.find_by_name(params[:name])
    @studies = Study.where(subject: @subject, status: '受講中')
  end

  def update_results
    @subject = Subject.find_by_name(params[:name])
    Study.update(params[:study].keys, params[:study].values)
    @studies = Study.where(subject: @subject, status: '受講中')
    @studies.each do |study|
      if study.score
        if study.score >= 50
          status = '受講済み'
        else
          status = '不可'
        end
      else
        status = '受講中'
      end
      study.update_attributes(status: status)
    end
    redirect_to edit_results_path(name: params[:name])
  end

  private

  def study_params
    params.require(:study).permit(:subject_id, :student_id, :status, :score)
  end

  def update_status
    if @study.score
      if @study.score >= 50
        status = '受講済み'
      else
        status = '不可'
      end
    else
      status = '受講中'
    end
    @study.update_attributes(status: status)
  end
end
