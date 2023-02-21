class UsersController < ApplicationController


  def show
    render json: @user.to_json(include: :items)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
