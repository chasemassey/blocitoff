class ItemsController < ApplicationController

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      flash[:notice] = "Your item was saved!"
    else
      flash[:error] = "There was a problem saving your item!"
    end
    redirect_to user_path(current_user)
  end

  def destroy
    @item = current_user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was removed."
    else
      flash[:error] = "Item couldn't be deleted. Try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
