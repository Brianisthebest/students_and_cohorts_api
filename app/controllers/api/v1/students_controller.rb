class Api::V1::StudentsController < ApplicationController
  def index
    students = Student.all
    render json: StudentSerializer.format_students(students)
  end
end