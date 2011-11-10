class Minute < ActiveRecord::Base
  has_many :articles, :dependent => :destroy
  validates :title, :presence =>true
end
