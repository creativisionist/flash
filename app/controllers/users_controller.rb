class UsersController < ApplicationController
  def create
    @user = User.create(user_params)

    if @user.save
      session[:id] = @user.id
      flash[:notice] = "Welcome"
      redirect_to user_cards_path(@user)
    else
      flash[:error] = "Error registering"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
