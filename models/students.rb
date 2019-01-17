class Student < ActiveRecord::Base
    belongs_to :teachers
    has_many :bookids
    has_many :livres, through: :bookids
    validates :name, presence: true
    validates :email, presence: true
end