class Bookid < ActiveRecord::Base
    belongs_to :livre
    belongs_to :student
    validates :uniqueid, presence: true
end