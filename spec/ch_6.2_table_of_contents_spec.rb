# Table of contents. Here’s something for you to do in order to play around
# more with center, ljust, and rjust: write a program that will display a table
# of contents so that it looks like this:

#                 Table of Contents
# Chapter 1:  Getting Started                 page  1
# Chapter 2:  Numbers                         page  9
# Chapter 3:  Letters                         page 13

require "ch_6.2_table_of_contents"

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


