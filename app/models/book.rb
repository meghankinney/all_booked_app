class Book < ActiveRecord::Base
  
validates :user_id, :presence => true
  
has_many :nominations , :class_name => "Nomination", :foreign_key => "book_id"
has_many :months , :class_name => "Month", :foreign_key => "book_id"
has_many :comments , :class_name => "Comment", :foreign_key => "book_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
  
end
