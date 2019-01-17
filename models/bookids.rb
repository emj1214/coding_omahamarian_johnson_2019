class Bookid < ActiveRecord::Base
    belongs_to :livre
    belongs_to :student
    scope :created_between, lambda {|start_date, end_date| where("created_at >= ? AND created_at <= ?", start_date, end_date )}
end