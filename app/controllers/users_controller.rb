class UsersController < ApplicationController
  def show

  end

  def edit
  end

  def index
    @profile_images = Profile_Image.all
  end
end
