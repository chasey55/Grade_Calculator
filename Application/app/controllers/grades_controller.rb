class GradesController < ApplicationController
    def create
        @user = User.find(session[:user_id])
        #grade = @user.grades.create(grade_params)
        @grade= @user.grades.first_or_create(grade_params).update(grade_params)
        flash[:notice] = 'Successfully checked in'
        redirect_to calculator_gradeCalculator_path
        
    end
    private
    
    
    def grade_params
       params.require(:grade).permit(:assignment1,:assignment2,:assignment3,:assignment4,:assignment5,:assignment6,:assignment7,:assignment8,:assignment9,:assignment10, :gradeNum1, :gradeNum2, :gradeNum3, :gradeNum4, :gradeNum5, :gradeNum6, :gradeNum7, :gradeNum8, :gradeNum9, :gradeNum10, :wieght1, :weight2, :weight3, :weight4, :weight5, :weight6, :weight7, :weight8, :weight9, :weight10, :weightAvg, :result) 
    end
end
