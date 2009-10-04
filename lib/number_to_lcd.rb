class NumberToLcd
  class << self
    def convert(this_number)
      return "#{blank}\n#{right}\n#{blank}\n#{right}\n#{blank}\n" if this_number == 1
      return "#{middle}\n#{right}\n#{middle}\n#{left}\n#{middle}\n" if this_number == 2
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
