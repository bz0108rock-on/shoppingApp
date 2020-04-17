class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_product, only: [:edit, :update, :show, :destroy]

  def index
    @products = Product.includes(:images).order('created_at DESC').limit(10)
  end

  def new
    @product = Product.new
    @images = @product.images.build
  end

  def create
    @product = Product.new(product_params)
    @product.valid?
    if @product.images.present? && @product.save
      redirect_to root_path
    else
      @product.images.build
      render :new
    end
  end

  def edit
    @images = @product.images
    redirect_to root_path if @product.seller_id != current_user.id
  end

  def update
    @image = Image.find(params[:id])
    if @product.update(product_params)
      redirect_to root_path, notice:""
    else
      render :edit
    end
  end

  def show
      @user = User.find(@product.seller_id)
  end


  def destroy
    if @product.seller_id == current_user.id && @product.destroy
      redirect_to root_path
    else
      alert('削除できませんでした。')
    end
  end

  def set_product
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :text, :category_id, :brand, :status_id, :delivery_charge_id, :prefecture_id, :delivery_day_id, :price, images_attributes: [:src, :id, :_destroy]).merge(seller_id: current_user.id)
  end
end
