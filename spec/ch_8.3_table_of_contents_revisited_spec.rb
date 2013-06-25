# Table of contents, revisited.

# Rewrite your table of contents program on page 32. Start the program with an
# array holding all of the information for your table of contents (chapter
# names, page numbers, and so on). Then print out the information from the array
# in a beautifully formatted table of contents.

require "ch_8.3_table_of_contents_revisited"

describe "Table of contents" do
  describe "Line width" do
    it "should be 50" do
      line_width.should == 50
    end
  end

  describe "Contents" do
    it "should be an Array" do
      contents.should be_a(Array)
    end

    it "should contain 4 elements" do
      contents.count.should == 4
    end
  end

  describe "Formatted contents" do
    it do
      formatted = ""

      formatted << "                TABLE OF CONTENTS                 \n"
      formatted << "\n"
      formatted << "Chapter 1:  Getting Started                 page 1\n"
      formatted << "Chapter 2:  Numbers                         page 9\n"
      formatted << "Chapter 3:  Numbers                        page 13\n"

      formatted_contents(contents).should == formatted
    end
  end
end
