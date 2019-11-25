class Car < ApplicationRecord
    has_many :assignments
    has_many :salespeople , through: :assignments

    def car_name
        "#{self.brand} #{self.name}"
    end

    def isassigned?(salesperson)
        self.salespeople.include?(salesperson)
    end
end
