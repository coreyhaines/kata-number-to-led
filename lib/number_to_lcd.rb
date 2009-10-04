class NumberToLcd
  class << self
    def convert(this_number)
      if this_number == 1
        [:blank, :right, :blank, :right, :blank]
      else
        [:middle, :right, :middle, :left, :middle]
      end.map do |line_type|
        send(line_type)
      end.join("\n")
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
