class User < ActiveRecord::Base  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  

  
has_many :months , :class_name => "Month", :foreign_key => "user_id"
has_many :comments , :class_name => "Comment", :foreign_key => "user_id"
has_many :books , :class_name => "Book", :foreign_key => "user_id"
has_many :votes , :class_name => "Vote", :foreign_key => "user_id"  
  
  
  
end
