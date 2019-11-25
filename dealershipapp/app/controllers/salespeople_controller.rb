class SalespeopleController < ApplicationController
    def index
        @salespeople = Salesperson.all
    end

    def show
        define_salesperson
    end

    def new
        @salesperson = Salesperson.new
    end

    def create
        @salesperson = Salesperson.create(my_params(:name))
        Assignment.create(car_id:params[:car],salesperson_id:@salesperson.id)
        redirect_to salesperson_path(@salesperson)
    end

    def update
        define_salesperson 
        @salesperson.assignments.destroy_all
        @salesperson.update(my_params(:name, car_ids: []))
        redirect_to salesperson_path(@salesperson)
    end

    def destroy 
        #fire
        define_salesperson.assignments.destroy_all
        @salesperson.destroy
        redirect_to salespeople_path
    end

    def edit
        define_salesperson
    end

    private

    def my_params(*args)
        params.require(:salesperson).permit(*args)
    end

    def define_salesperson
        @salesperson = Salesperson.find(params[:id])
    end



end

