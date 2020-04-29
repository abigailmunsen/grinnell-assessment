class HomepageController < ApplicationController
  def home
    @goals = InstGoal.all
  end

  def about
  end

  def contact
  end

end
