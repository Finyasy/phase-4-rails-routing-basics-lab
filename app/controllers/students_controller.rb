class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    # Add a grades action in the StudentsController for handling that route
    # In the grades action, return JSON data representing a list of all students, ordered by grade from highest to lowest
    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    # Add a highest_grade action in the StudentsController for handling that route
    # In the highest_grade action, return JSON data representing the student with the highest grade
    #  this route should return just one student object!
    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
    end

end
