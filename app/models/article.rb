class Article < ActiveRecord::Base
  belongs_to :minute
  belongs_to :type
  validates :minute_id, :presence => true
  validates :content, :presence => true
  validates :type_id, :presence => true

end
