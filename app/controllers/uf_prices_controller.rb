class UfPricesController < ApplicationController
  before_action :set_uf_price, only: [:show, :edit, :update, :destroy]

  # GET /uf_prices
  # GET /uf_prices.json
  def index
    @uf_prices = UfPrice.all
  end

  # GET /uf_prices/1
  # GET /uf_prices/1.json
  def show
  end

  # GET /uf_prices/new
  def new
    @uf_price = UfPrice.new
  end

  # GET /uf_prices/1/edit
  def edit
  end

  # POST /uf_prices
  # POST /uf_prices.json
  def create
    @uf_price = UfPrice.new(uf_price_params)

    respond_to do |format|
      if @uf_price.save
        format.html { redirect_to root_path, notice: 'Uf price was successfully created.' }
        format.json { render :show, status: :created, location: @uf_price }
      else
        format.html { render :new }
        format.json { render json: @uf_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uf_prices/1
  # PATCH/PUT /uf_prices/1.json
  def update
    respond_to do |format|
      if @uf_price.update(uf_price_params)
        format.html { redirect_to @uf_price, notice: 'Uf price was successfully updated.' }
        format.json { render :show, status: :ok, location: @uf_price }
      else
        format.html { render :edit }
        format.json { render json: @uf_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uf_prices/1
  # DELETE /uf_prices/1.json
  def destroy
    @uf_price.destroy
    respond_to do |format|
      format.html { redirect_to uf_prices_url, notice: 'Uf price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uf_price
      @uf_price = UfPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uf_price_params
      params.require(:uf_price).permit(:uf_price)
    end
end
