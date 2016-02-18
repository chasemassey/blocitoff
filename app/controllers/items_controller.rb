class ItemsController < ApplicationController

  before_action :authenticate_user!

  def new
    @user = current_user
    @item = @user.items
  end

  def create
      @item = Item.new
      @item.name = params[:item][:name]
      @user = current_user
      @item.user = @user

       if @item.save
         flash[:notice] = "Item saved successfully."

         redirect_to [@user]

       else
         flash[:alert] = "Item failed to save."

        render :new
       end

   end

end
