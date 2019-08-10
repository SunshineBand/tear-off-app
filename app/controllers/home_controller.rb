class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @projects = Project.where(active: true)
    # CHANGE popular flyers to pull flyers where the most users are attending then REMOVE this comment
    @flyers = Flyer.all
    popular_flyers = @flyers.reject { |flyer| !flyer.max_attendees }
    @popular_flyers = (popular_flyers.sort_by { |flyer| flyer.max_attendees - FlyerAttendedByUser.where(flyer_id: flyer.id).count })[0..2]
  end
  def about_us
  end
  def projects
  end

end
