class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  def new
    @car = Car.new(top_seats: 20, bottom_seats: 20)
  end

  def index
    @cars = Car.all
  end

  def show
  end

  def create
    @car = Car.new(car_params)
    if @car.save
    redirect_to cars_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
    redirect_to cars_url
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_url
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:type, :top_seats, :bottom_seats, :train_id)

  end
end