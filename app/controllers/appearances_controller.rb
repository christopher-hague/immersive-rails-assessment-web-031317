class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)

    if @appearance.save
      redirect_to @appearance
    else
      redirect_to '/appearances/new'
    end
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def index
    @appearances = Appearance.all
  end

  private

  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
