class CarsController < ApplicationController

    def index
        @cars = Car.all
    end

    def show
        define_car
    end

    def new
        @car = Car.new
    end

    def create
        @car = Car.create(my_params(:name, :brand, :price))
        redirect_to car_path(@car)
    end

    def update
        define_car
        @car.update(my_params(:name, :brand, :price))
        redirect_to car_path(@car)
    end

    def delete

    end

    def edit
        define_car
    end

    private

    def my_params(*args)
        params.require(:car).permit(*args)
    end

    def define_car
        @car = Car.find(params[:id])
    end

end