class NumberToLcd
  class << self

    LINES_FOR = {
      1 => [:blank, :right, :blank, :right, :blank],
      2 => [:middle, :right, :middle, :left, :middle],
      3 => [:middle, :right, :middle, :right, :middle],
      4 => [:blank, :left_and_right, :middle, :right, :blank],
      5 => [:middle, :left, :middle, :right, :middle],
      6 => [:middle, :left, :middle, :left_and_right, :middle],
      7 => [:middle, :right, :blank, :right, :blank]
    }
    def convert(this_number)
      lines = LINES_FOR[this_number]
      lines_to_strings(lines).join("\n")
    end
    
    def lines_to_strings(lines)
      lines.map do |line_type|
        STRINGS_FOR_TYPE[line_type]
      end
    end

    STRINGS_FOR_TYPE = { :blank          => "   ",
      :left           => "|  ",
      :right          => "  |",
      :left_and_right => "| |",
      :middle         => " - "
    }
  end
end
