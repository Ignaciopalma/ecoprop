class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [ :index, :show ]


  def index
    @properties = Property.all
    @uf_price = UfPrice.last.uf_price

  end

  def show
    @uf_price = UfPrice.last.uf_price
    puts 'hello world'
    puts @property
  end

  def new
    @property = Property.new
  end

  def edit
  end

  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:for_sale, :for_rent, :address, :price, :description, :rooms, :toilets, :floors, :total_area, :house_area, :pool, :furnished, :parking, :cellar, :house, :apartment, :terrain, :common_expenses, :district, :city, :image, :imagetwo, :imagethree, :imagefour, :imagefive, :highlight)
    end
end
