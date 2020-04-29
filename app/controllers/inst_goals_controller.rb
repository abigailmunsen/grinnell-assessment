class InstGoalsController < ApplicationController
  def index
    @instgoals = InstGoal.all
  end

  def show
    @instgoal = InstGoal.find(params[:goalNum])
  end
end
