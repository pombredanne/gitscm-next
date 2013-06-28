require 'spec_helper'

describe Chapter do

  subject(:book) { create(:book) }
  subject(:chapter) { book.chapters.first }

  context "validation" do

    it { build(:chapter).should be_valid }

    it "without title" do
      chapter.title = nil
      chapter.save.should be_false
    end

    it "without number" do
      chapter.number = nil
      chapter.save.should be_false
    end

  end

  context "sections" do

    it { chapter.sections.should be_present }

    it "first section" do
      section = chapter.sections.first
      chapter.first_section.should == section
    end

    it "last section" do
      section = chapter.sections.last
      chapter.last_section.should == section
    end

  end

  context "pagination" do

    it "next chapter" do
      chapter = book.chapters.last.prev
      next_page = chapter.number + 1
      chapter.next.should be_kind_of(Chapter)
      ch = chapter.next
      ch.number.should == next_page
      ch.next.should be_false
    end

    it "previous chapter" do
      chapter = book.chapters.first.next
      previous_page = chapter.number - 1
      chapter.prev.should be_kind_of(Chapter)
      ch = chapter.prev
      ch.number.should == previous_page
      ch.prev.should be_false
    end

  end

end
