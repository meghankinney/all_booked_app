class Vote < ActiveRecord::Base

validates :user_id, :presence => true
validates :nomination_id, :presence => true


belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :nomination , :class_name => "Nomination", :foreign_key => "nomination_id"


end
