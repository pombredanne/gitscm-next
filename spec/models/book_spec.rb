require 'spec_helper'

describe Book do

  subject(:book) { create(:book) }

  context "validation" do
    it { book.should be_valid }
    it "without code" do
     book.code = nil
     book.save.should be_false
   end
  end

  context "chapters" do
    it { book.chapters.should be_present }
  end

  context "sections" do
    it { book.sections.should be_present }
  end


end
