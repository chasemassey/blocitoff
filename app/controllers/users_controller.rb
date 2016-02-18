class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @item = Item.new
    @items = current_user.items
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end
  end
