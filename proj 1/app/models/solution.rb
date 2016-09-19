class Solution < ActiveRecord::Base
  belongs_to :theme
  belongs_to :user
  #validates  :status, presence: true
  validates  :theme_id, presence: true
  validates  :solution, presence: true
end
