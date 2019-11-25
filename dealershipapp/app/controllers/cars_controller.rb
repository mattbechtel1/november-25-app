class CarsController < ApplicationController

    def index
        @cars = Car.where("sold=?",false)
    end

    def show
        define_car
    end

    def new
        @car = Car.new
    end

    def create
        @car = Car.create(my_params(:name, :brand, :price))
        @car.sold = false
        @car.save
        redirect_to car_path(@car)
    end

    def update
        define_car.update(my_params(:name, :brand, :price, :sold))
        redirect_to car_path(@car)
    end

    def destroy
        define_car.destroy
        redirect_to cars_path
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