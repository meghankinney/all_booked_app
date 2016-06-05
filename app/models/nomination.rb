class Nomination < ActiveRecord::Base
 
validates :month_id, :presence => true
validates :book_id, :presence => true
  
  
has_many :votes , :class_name => "Vote", :foreign_key => "nomination_id"
belongs_to :book , :class_name => "Book", :foreign_key => "book_id"
belongs_to :month , :class_name => "Month", :foreign_key => "month_id"
  
  
end
