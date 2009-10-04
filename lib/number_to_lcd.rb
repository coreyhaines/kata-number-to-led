class NumberToLcd
  class << self

    LINES_FOR = {
      1 => [:blank, :right, :blank, :right, :blank],
      2 => [:middle, :right, :middle, :left, :middle]
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

    { :blank  => "   ",
      :left   => "|  ",
      :right  => "  |",
      :middle => " - "
    }.each_pair do |key, string|
      define_method(key) do
        string
      end
    end
    
  end
end
