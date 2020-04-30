class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :get_dept, only: [:show, :edit, :update, :destroy, :index]

  def index
    @courses = Course.where(department: @department)
  end

  def show
    @coursegoals = Coursegoal.where(course: @course)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_dept
      @department = Department.find_by(deptCode: params[:department_id])
    end

    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def course_params
    #  params.require(:course).permit(:goalNum, :goalText, :goalDetails, :text)
    #end
end
