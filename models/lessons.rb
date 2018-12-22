class Lesson < ActiveRecord::Base
    belongs_to :student
    belongs_to :teacher
    has_many :livres
    validates :name, presence: true
    validates :uniqueid, presence: true
end