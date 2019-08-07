class FlyersController < ApplicationController
  before_action :set_flyer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /flyers
  # GET /flyers.json
  def index
    @flyers = Flyer.all
    popular_flyers = @flyers.reject { |flyer| !flyer.max_attendees }
    @popular_flyers = (popular_flyers.sort_by { |flyer| flyer.max_attendees - FlyerAttendedByUser.where(flyer_id: flyer.id).count })[0..5]
    @category_list = Category.all.sample 6
    @random_category = Category.all.sample(1).first
    @projects = Project.all
    # flyer.max_attendees - FlyerAttendedByUser.where(flyer_id: flyer.id).count
  end

  def all
    @flyers_returned = Flyer.search(params[:title])
  end

  # GET /flyers/1
  # GET /flyers/1.json
  def show
  end

  # GET /flyers/new
  def new
    user_signed_in?
    @flyer = Flyer.new
  end

  # GET /flyers/1/edit
  def edit
    user_signed_in?
  end

  # POST /flyers
  # POST /flyers.json
  def create
    @flyer = Flyer.new(flyer_params)

    respond_to do |format|
      if @flyer.save
        format.html { redirect_to @flyer, notice: 'Flyer was successfully created.' }
        format.json { render :show, status: :created, location: @flyer }
      else
        format.html { render :new }
        format.json { render json: @flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flyers/1
  # PATCH/PUT /flyers/1.json
  def update
    respond_to do |format|
      if @flyer.update(flyer_params)
        format.html { redirect_to @flyer, notice: 'Flyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @flyer }
      else
        format.html { render :edit }
        format.json { render json: @flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flyers/1
  # DELETE /flyers/1.json
  def destroy
    @flyer.destroy
    respond_to do |format|
      format.html { redirect_to flyers_url, notice: 'Flyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flyer
      @flyer = Flyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flyer_params
      params.require(:flyer).permit(:title, :cost, :info, :time, :date_of_event, :user_id, :project_id, :category_id, :max_attendees, :address)
    end
end
