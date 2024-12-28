class SaleItemsController < ApplicationController
  def index
    @sale_items = SaleItem.all
  end

  def show
    @sale_item = SaleItem.find(params[:id])
  end

  def new
    @sale_item = SaleItem.new
  end

  def create
    @sale_item = SaleItem.new(sale_item_params)
    if @sale_item.save
      redirect_to @sale_item
    else
      render :new
    end
  end

  def edit
    @sale_item = SaleItem.find(params[:id])
  end

  def update
    @sale_item = SaleItem.find(params[:id])
    if @sale_item.update(sale_item_params)
      redirect_to @sale_item
    else
      render :edit
    end
  end

  def destroy
    @sale_item = SaleItem.find(params[:id])
    @sale_item.destroy
    redirect_to sale_items_path
  end

  private

  def sale_item_params
    params.require(:sale_item).permit(:sale_id, :inventory_id, :quantity, :price)
  end
end
