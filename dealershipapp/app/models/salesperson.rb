class Salesperson < ApplicationRecord
    has_many :assignments
    has_many :cars , through: :assignments


    def car_ids=(ids)
        ids.each do |id|
            car = Car.find(id)
            self.cars << car
        end  
    end


end
