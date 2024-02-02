class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    User.create(user_params)
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :email, :age)
  end
end
