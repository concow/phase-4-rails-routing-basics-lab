class StudentsController < ApplicationController
    # In the index action, return JSON data representing a list of all students
    def index
        students = Student.all
        render json: students
    end
    # return JSON data rep a list of all students ordered by grade highest to lowest
    def grades 
        students = Student.order(grade: :desc)
        render json: students
    end
    # JSON data representing the one student with the highest grade
    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
    end
end
