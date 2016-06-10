class Month < ActiveRecord::Base

validates :user_id, :presence => true
validates :started_on, :presence => true


has_many :nominations , :class_name => "Nomination", :foreign_key => "month_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :book , :class_name => "Book", :foreign_key => "book_id"



end
