require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]

  def index
    @students = Student.all
  end

  def show
  end

  def edit
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
    # redirect_to "/students/#{@student.id}"
    # redirect_to :action => "show", :id => @student.id
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
