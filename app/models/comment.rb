class Comment < ActiveRecord::Base
  
validates :user_id, :presence => true
validates :book_id, :presence => true
validates :body, :presence => true
  
belongs_to :book , :class_name => "Book", :foreign_key => "book_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
  
  
end
