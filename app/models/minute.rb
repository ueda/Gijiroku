class Minute < ActiveRecord::Base
  has_many :articles, :dependent => :destroy, :order=>"created_at desc"
  validates :title, :presence =>true
end
