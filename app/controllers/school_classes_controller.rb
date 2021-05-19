class SchoolClassesController < ApplicationRecord
    def index
        @school_classes = SchoolClasses.all 
    end 

    def show
        @school_class = SchoolClasses.find(params[:id])
    end 

    def new 
        @school_class = SchoolClasses.new 
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def create
        @school_class = SchoolClass.new 
        @school_class.title = params[:title]
        @school_class.room_number = params[:room_number]
        @school_class.save 
        redirect_to school_class_path(@school_class)
    end 

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end 
end 