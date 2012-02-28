require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "shuuld save normal entry" do
    minute = minutes(:mtg02)
    minute.save
    article = articles(:article01)
    article.minute = minute
    assert article.save
  end 

  test "shuold not save without minute id" do
    article = articles(:article01)
    assert !article.save
  end 

  test "should not save without mandatory fields" do
    article = Article.new
    assert !article.save
  end 

  test "should save normal data related to types" do
    minute = minutes(:mtg02)
    minute.save
    type = types(:type_ok)
    type.save
    article = articles(:article01)
    article.minute = minute
    article.type = type
    assert article.save
  end
end
