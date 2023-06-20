class StudentsController < ApplicationController
    def index
        all_students= Student.all
        render json: all_students
    end
    def grades
        all_students=Student.order(grade: :desc)
        render json: all_students
    end

    def highest_grade
        highest_grade=Student.order(grade: :desc).first
        render json: highest_grade
    end
end
