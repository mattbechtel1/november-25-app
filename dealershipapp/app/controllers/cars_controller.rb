class CarsController < ApplicationController

    def index
        @cars = Car.all
    end

    def show
        @car = Car.find(params[:id])
    end

    def new
        @car = Car.new
    end

    def create
        @car = Car.create(my_params(:name, :brand, :price))
        redirect_to car_path(@car)
    end

    def update

    end

    def delete

    end

    def edit

    end

    private

    def my_params(*args)
        params.require(:car).permit(*args)
    end
end
