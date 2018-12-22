class Teacher < ActiveRecord::Base
    has_many :lessons
    has_many :students, -> {:lessons}
    validates :name, presence: true
    validates :email, presence: true
end