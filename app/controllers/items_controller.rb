class ItemsController < ApplicationController
  def create
    Item.create(item_params)
    redirect_to admin_index_path
  end

  def edit
    @item = Item.find(params[:id])
    @sections = Section.all
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_index_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_index_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :price, :section_id)
  end
end
