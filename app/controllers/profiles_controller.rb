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
      redirect_to root_path
    else
      render action: :new
    end
  end
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
    end
end