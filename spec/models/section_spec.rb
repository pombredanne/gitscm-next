require 'spec_helper'

describe Section do

  subject(:book) { create(:book) }
  subject(:section) { book.sections.first }

  context "validation" do

    it { build(:section).should be_valid }

    it "without title" do
      section.title = nil
      section.save.should be_false
    end

    it "without number" do
      section.number = nil
      section.save.should be_false
    end

    it "slug" do
      section.slug.should be_present
    end

    it "cs_number" do
      section.cs_number.should == "#{section.chapter.number}.#{section.number}"
    end

  end

  context "pagination" do

    it "next slug" do
      section.next_slug =~ //
    end

    it "previous slug" do
      section.prev_slug =~ //
    end

  end

  context "related item" do
    pending
  end


end
