class Salesperson < ApplicationRecord
    
    has_many :assignments
    has_many :cars , through: :assignments


    def car_ids=(ids)
        ids.each do |id|
            car = Car.find(id)
            unless self.cars.include?(car)
                self.cars << car
            end
        end  
    end




end
