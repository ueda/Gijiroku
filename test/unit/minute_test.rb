require 'test_helper'

class MinuteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save minute without title" do
    #minute = Minute.new
    minute = minutes(:mtg01)
    assert !minute.save
  end

  test "should save minute with title" do
    minute = minutes(:mtg02)
    assert minute.save
  end 

  test "should save minutes with created_by and updated_by as null" do
    minute = minutes(:mtg02)
    minute.save
    assert minute.created_by.nil? && minute.updated_by.nil?
  end
end
