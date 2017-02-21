class CarsController < ApplicationController

  def new
    @car = Car.new(top_seats: 20, bottom_seats: 20)
  end

  def index
    @cars = Car.all
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
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
    redirect_to cars_url
    else
      render :edit
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_url
  end

  private

  def car_params
    params.require(:car).permit(:car_type, :top_seats, :bottom_seats, :train_id)
  end
end