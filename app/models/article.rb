class Article < ActiveRecord::Base
  belongs_to :minute
  validates :minute_id, :presence => true
  validates :content, :presence => true

end
