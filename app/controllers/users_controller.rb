class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update]
  
  def index
    @user = User.all
  end

  def show
  end

  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to users_path(@user), notice: "更新に成功しました"
    else
      flash.now[:alert] = '入力に不備があります'
      render 'users/edit'
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image_id, :occupation, :job_years, :profile)
  end
  
  def find_user
    @user = User.find(params[:id])
  end
  
end