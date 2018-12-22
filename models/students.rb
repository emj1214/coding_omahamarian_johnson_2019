class Student < ActiveRecord::Base
    has_many :lessons
    has_many :teachers, -> {:lessons}
    has_many :bookids
    has_many :livres, -> {:bookids}
    validates :name, presence: true
    validates :email, presence: true
end