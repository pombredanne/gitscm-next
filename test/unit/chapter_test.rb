require 'test_helper'

class ChapterTest < Test::Unit::TestCase

  should belong_to :book
  should have_many :sections

end
