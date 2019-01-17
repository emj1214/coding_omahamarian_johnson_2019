class Livre < ActiveRecord::Base
    has_many :bookids
    has_many :students, through: :bookids
    validates :title, presence: true
end