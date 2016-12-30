class ProfilesController < ApplicationController
  # GET to /users/:user_id/profiles/new
  
  def new
    @profile = Profile.new
  end
  
  def create
  
  end
end