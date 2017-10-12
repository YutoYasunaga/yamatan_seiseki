class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.where(teacher: current_teacher, status: '確認待ち')
  end

  def new
    @teachers = Teacher.where("department = ? and status = ?", current_student.department, '在職中')
    @all_subjects = Subject.where("(department = ? or department = ?) and status = ?", '全学科', current_student.department, '実行中').order('name')
    @subjects = []
    @all_subjects.each do |subject|
      unless subject.is_studying(current_student)
        @subjects << subject
      end
    end

    @registration = current_student.registration || Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    @registration.student = current_student
    if @registration.save
      redirect_to root_path
      flash[:success] = "履修登録が#{@registration.teacher.name}先生に送信されました！"
    end
  end

  def update
    @registration = Registration.find(params[:id])
    if @registration.update(registration_params)
      @registration.update_attributes(status: '確認待ち')
      redirect_to root_path
      flash[:success] = "更新した履修登録が#{@registration.teacher.name}先生に送信されました！"
    end
  end

  def accept
    @registration = Registration.find(params[:id])
    @registration.subjects.each do |subject|

      study = Study.where(student: @registration.student, subject: subject).take
      if study
        study.update_attributes(status: '受講中')

      else
        Study.create(
          student: @registration.student,
          subject: subject,
          status: '受講中'
        )
      end
    end
    @registration.update_attributes(status: 'OK')
    redirect_to registrations_path
    flash[:success] = "#{@registration.student.name}さんの履修登録が登録されました！"
  end

  def reject
    @registration = Registration.find(params[:id])
    @registration.update_attributes(status: 'NG')
    redirect_to registrations_path
    flash[:warning] = "#{@registration.student.name}さんの履修登録が拒否されました！"
  end
  private

  def registration_params
    params.require(:registration).permit(:student_id, :teacher_id, :subject_ids => [])
  end
end
