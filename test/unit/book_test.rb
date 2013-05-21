require 'test_helper'

class BookTest < Test::Unit::TestCase

  should have_many :chapters
  should have_many(:sections).through(:chapters)

end
