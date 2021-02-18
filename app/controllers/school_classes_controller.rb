class SchoolClassesController < ApplicationController

    def new
        @class = SchoolClass.new
    end 

    def create
        @class = SchoolClass.create(strong_params)
        redirect_to school_class_path(@class)
    end 
    
    def show
        @class = find_class
    end 

    def edit
        @class = find_class
    end 

    def update
        @class = find_class
        @class.update(strong_params)
        @class.save
        redirect_to school_class_path(@class)
    end

    private

    def find_class
        SchoolClass.find(params[:id])
    end

    def strong_params
        params.require(:school_class).permit(:title, :room_number)
    end


end