class Comment < ActiveRecord::Base
attr_accessible :comment, :post_id
belongs_to :post
validates :comment, :length => { :maximum => 140 }
end
