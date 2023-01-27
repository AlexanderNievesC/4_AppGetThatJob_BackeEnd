class UsersController < ApplicationController

  def index
    users=User.all
    render json: users, status: :ok
  end

  def create
    user=User.create(user_params)

    if user.save
      render json: user, status: :created
    else 
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def edit
  end

  def show
    user=User.find(params[:id])
      render json: user
  end

  def update
  end

  def destroy
    user=User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :password,:active)
  end

end
