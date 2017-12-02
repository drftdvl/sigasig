class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
    #guardextfile = @user.build_guard_ext_file
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, :notice => "User successfully created!"
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
    #guardextfile = @user.build_guard_ext_file
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to users_path, :notice => "User successfully modified!"
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:id, :name, :email, :admin, :password)
  end
end
