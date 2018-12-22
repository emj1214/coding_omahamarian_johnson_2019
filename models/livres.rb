class Book < ActiveRecord::Base
    belongs_to :lessons
    has_many :bookids
    belongs_to :students, -> {:bookids}
    validates :title, presence: true
end