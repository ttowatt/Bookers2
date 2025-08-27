class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user 
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path(@user), notice: "You have updated user successfully."
      else
        render :edit
      end
  end

  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
  
end
