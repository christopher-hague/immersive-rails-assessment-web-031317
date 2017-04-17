class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new
    @guest.name = params[:name]
    @guest.occupation = params[:occupation]
    @guest.save
    redirect_to @guest
  end

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end
end
