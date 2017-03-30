class ProductCachesController < ApplicationController
  before_action :set_product_cach, only: [:show, :edit, :update, :destroy]

  # GET /product_caches
  # GET /product_caches.json
  def index
    @product_caches = ProductCache.all
  end

  # GET /product_caches/1
  # GET /product_caches/1.json
  def show
  end

  # GET /product_caches/new
  def new
    @product_cach = ProductCache.new
  end

  # GET /product_caches/1/edit
  def edit
  end

  # POST /product_caches
  # POST /product_caches.json
  def create
    @product_cach = ProductCache.new(product_cach_params)

    respond_to do |format|
      if @product_cach.save
        format.html { redirect_to @product_cach, notice: 'Product cache was successfully created.' }
        format.json { render :show, status: :created, location: @product_cach }
      else
        format.html { render :new }
        format.json { render json: @product_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_caches/1
  # PATCH/PUT /product_caches/1.json
  def update
    respond_to do |format|
      if @product_cach.update(product_cach_params)
        format.html { redirect_to @product_cach, notice: 'Product cache was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_cach }
      else
        format.html { render :edit }
        format.json { render json: @product_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_caches/1
  # DELETE /product_caches/1.json
  def destroy
    @product_cach.destroy
    respond_to do |format|
      format.html { redirect_to product_caches_url, notice: 'Product cache was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_cach
      @product_cach = ProductCache.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_cach_params
      params.require(:product_cach).permit(:key, :name, :values, :date_created)
    end
end
