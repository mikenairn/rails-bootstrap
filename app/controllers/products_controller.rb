class ProductsController < ApplicationController
  respond_to :html, :json
  before_filter :authenticate_user!

  # GET /products
  # GET /products.json
  def index
    @products = current_user.products
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = current_user.products.find(params[:id])
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @product = current_user.products.find(params[:id])
  end

  # POST /products
  # POST /products.JSON
  def create
    @product = Product.new(params[:product])
    @product.user = current_user

    if @product.save
      flash[:notice] = "Product was successfully created."
    end
    respond_with @product
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = current_user.products.find(params[:id])

    if @product.update_attributes(params[:product])
      flash[:notice] = "Product was successfully updated."
    end
    respond_with @product
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = current_user.products.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
