class Admin::CarsController < Admin::BaseController
  before_action :set_train, only: [:new, :create]
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
    @car = @train.cars.new(car_params)
    if @car.save
    redirect_to admin_train_path(@train)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
    redirect_to train_url
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to train_url
  end

  private
  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:type, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats, :train_id, :seated_seats)

  end
end