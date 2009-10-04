class NumberToLcd
  class << self

    LINES_FOR = {
      1 => [:blank, :right, :blank, :right, :blank],
      2 => [:middle, :right, :middle, :left, :middle],
      3 => [:middle, :right, :middle, :right, :middle],
      4 => [:blank, :left_and_right, :middle, :right, :blank]
    }
    def convert(this_number)
      lines = LINES_FOR[this_number]
      lines_to_strings(lines).join("\n")
    end
    
    def lines_to_strings(lines)
      lines.map do |line_type|
        send(line_type)
      end
    end

    { :blank          => "   ",
      :left           => "|  ",
      :right          => "  |",
      :left_and_right => "| |",
      :middle         => " - "
    }.each_pair do |key, string|
      define_method(key) do
        string
      end
    end
    
  end
end
