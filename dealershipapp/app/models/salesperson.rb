class Salesperson < ApplicationRecord
    has_many :assignments
    has_many :cars , through: :assignments
end
