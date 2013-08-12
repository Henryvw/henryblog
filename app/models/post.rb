class Post < ActiveRecord::Base

before_save :check_this

after_save :check_this
before_validation :check_this

  def check_this
    binding.pry
  end
end
