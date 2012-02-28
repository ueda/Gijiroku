require 'test_helper'

class TypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should save normal data" do
    type = types(:type_ok)
    assert type.save
    type = types(:type_info)
    assert type.save
    type = types(:type_problem)
    assert type.save
    type = types(:type_todo)
    assert type.save
  end

  test "should not save without mandatory fields" do
    type = Type.new
    assert !type.save
  end 
end
