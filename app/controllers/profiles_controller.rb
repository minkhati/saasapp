class ProfilesController < ApplicationController
  # GET to /users/:user_id/profiles/new
  
  def new
    @profile = Profile.new
  end
  
  # POST to /users/:user_id/profile
  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = "Profile Created!"
      redirect_to user_path(params[:user_id])
    else
      render action: :new
    end
  end
  
  # GET /users/:user_id/profile/edit
  def edit
    @user = User.find(params[:user_id])
    @profile = @user.profile
  end
  
  # PATCH to /users/:user_id/profile
  def update
    @user = User.find(params[:user_id])
    @profile = @user.profile
    if @profile.update_attributes(profile_params)
      flash[:succes] = "Profile updated!"
      redirect_to user_path(id: params[:user_id])
    else
      render action: :edit
    end
  end
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :avatar, :job_title, :phone_number, :contact_email, :description)
    end
end