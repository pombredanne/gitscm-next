require 'test_helper'

class SectionTest < Test::Unit::TestCase

  should belong_to :chapter
  should have_one(:book).through(:chapter)

end
