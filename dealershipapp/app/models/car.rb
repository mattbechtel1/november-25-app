class Car < ApplicationRecord
    has_many :assignments
    has_many :salespeople , through: :assignments

    def car_name
        "#{self.brand} #{self.name}"
    end

    def isassigned?(salesperson)
        self.salespeople.include?(salesperson)
    end

    def self.unsold_cars
        self.all.where("sold = ?", false)
    end

    def self.total_value
        self.unsold_cars.map {|car| car.price}.sum
    end
end
