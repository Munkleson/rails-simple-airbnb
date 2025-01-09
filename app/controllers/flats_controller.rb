class FlatsController < ApplicationController
  before_action :get_flat, only: [:destroy, :edit, :show, :update]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def destroy
    if @flat.destroy
      redirect_to flats_path
    else
      render :index
    end
  end

  def edit
    @flats = Flat.all
  end

  def update
    if @flat.update(flat_params)
      redirect_to flats_path
    else
      render :show
    end
  end

  private

  def get_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
