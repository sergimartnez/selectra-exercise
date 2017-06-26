class UsersController < ApplicationController

  # before_action :authenticate_user!, :except => [:home]


  def home

  end

  def landing

  end

  def view
    @user=User.find_by(id: params[:id])
  end

  def index
    @users=User.all
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
