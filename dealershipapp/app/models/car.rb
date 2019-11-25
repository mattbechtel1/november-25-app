class Car < ApplicationRecord
    has_many :assignments
    has_many :salespeople , through: :assignments

    def car_name
        "#{self.brand} #{self.name}"
    end
end
