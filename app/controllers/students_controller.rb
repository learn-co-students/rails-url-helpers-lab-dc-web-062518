class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.toggle
    @student.save
    redirect_to student_path(@student)

  end


  # patch '/students/:id' do
  #   @student.update(active: params[:active])
  #   erb :'/students/show'
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
