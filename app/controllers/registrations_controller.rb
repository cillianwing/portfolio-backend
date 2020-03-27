class RegistrationsController < ApplicationController

  def create 
    binding.pry
    user = User.create!(user_params)
    if user
      session[:user_id] = user.id
      render json: {status: :created, user: user}
    else
      render json: {status: 500}
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number, :street, :city, :state, :zip_code, :linkedin_url, :github_url)
  end

end