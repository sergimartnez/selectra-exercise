require 'pry'

class LocationsController < ApplicationController

  # before_action :authenticate_user!

  def view
    @location = Location.find_by(id: params[:id])
  end

  def index
    @locations=Location.all
    # binding.pry
  end

  def new
    @location=Location.new
    
  end

  def status
    @location=Location.find_by(id: params[:id])
    actual_time = Time.now

    if actual_time.hour >= Integer(@location.opening_time.split(":")[0]) && actual_time.hour <= Integer(@location.closing_time.split(":")[0])
      render json: {status: "Open"}
    else
      render json: {status: "Closed"}
    end
  end

  def create
    @location = Location.new(
      name: params[:location][:name],
      opening_time: params[:location][:opening_time],
      closing_time: params[:location][:closing_time],
      user: current_user)

    if @location.save
      redirect_to "/locations/#{@location.id}"
    else
      render "new"
    end
  end

  def edit
    @location=Location.find_by(id: params[:id])
  end

  def update
    @location=Location.find_by(id: params[:id])
    if @lication.update(name: params[:location][:name], 
      opening_time: params[:location][:opening_time],
      closing_time: params[:location][:closing_time])

      redirect_to "locations/#{@location.id}"
    else
      render "edit"
    end
  end

  def remove

  end
end
