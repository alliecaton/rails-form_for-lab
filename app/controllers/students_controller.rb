class StudentsController < ApplicationController

    def new
        @student = Student.new
    end 

    def create
        @student = Student.create(strong_params)
        redirect_to student_path(@student)
    end 
    
    def show
        @student = find_student
    end 

    def edit
        @student = find_student
    end 

    def update
        @student = find_student
        @student.update(strong_params)
        @student.save
        redirect_to student_path(@student)
    end

    private

    def find_student
        Student.find(params[:id])
    end

    def strong_params
        params.require(:student).permit(:first_name, :last_name)
    end

end