class SubjectsController < ApplicationController
  before_action :set_subject, only: [:edit, :update]

  def index
    @subjects = Subject.where(status: '実行中')
    @deleted_subjects = Subject.where(status: '停止済み')
  end

  def new
    @subject = Subject.new
  end

  def edit
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to subjects_path
      flash[:success] = '新しい科目が作成されました！'
    end
  end

  def update
    if @subject.update_attributes(subject_params)
      redirect_to subjects_path
      flash[:success] = '科目情報が更新されました！'
    end
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:name, :credit, :division, :section, :department, :status, :teacher_id)
  end
end
