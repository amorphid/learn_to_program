def line_width
  50
end

def contents
  [
    "TABLE OF CONTENTS",
    [
      "Chapter 1:",
      "Getting Started",
      "page 1"
    ],
    [
      "Chapter 2:",
      "Numbers",
      "page 9"
    ],
    [
      "Chapter 3:",
      "Numbers",
      "page 13"
    ]
  ]
end

def formatted_contents(contents)
  column0 = line_width/5
  column1 = column0 * 3
  column2 = column0
  formatted = ""

  formatted << (contents[0]).center(line_width) + "\n"
  formatted << "\n"

  contents[1..-1].each do |line|
    formatted << line[0].ljust(column0)
    formatted << ("  " + line[1]).ljust(column1)
    formatted << line[2].rjust(column2)
    formatted << "\n"
  end

  formatted
end

def app
  formatted_contents(contents)
end
