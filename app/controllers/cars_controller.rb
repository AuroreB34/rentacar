class CarsController < ApplicationController
  # before_action :set_car, only: [:show, :index]


  def index
    @cars = Car.all
  end

  # GET /car/:id
  def show
    set_car
  end

  def edit
  end

  def update
    @car.update(car_params)
    end

    def destroy
      @car = Car.find(params[:id]).destroy
    end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:car_id)
  end

end
