class NumberToLcd
  class << self
    def convert(this_number)
      lines = lines_for(this_number)
      lines_to_strings(lines).join("\n")
    end

    def lines_for(this_number)
      LINES_FOR[this_number.to_s]
    end
    def lines_to_strings(lines)
      lines.map do |line_type|
        STRING_FOR_LINE_TYPE[line_type]
      end
    end
  end

  STRING_FOR_LINE_TYPE = {
    :blank          => "   ",
    :left           => "|  ",
    :right          => "  |",
    :left_and_right => "| |",
    :middle         => " - "
  }

  LINES_FOR = {
    '1' => [:blank,
          :right,
          :blank,
          :right,
          :blank],
    '2' => [:middle,
          :right,
          :middle,
          :left,
          :middle],
    '3' => [:middle,
          :right,
          :middle,
          :right,
          :middle],
    '4' => [:blank,
          :left_and_right,
          :middle,
          :right,
          :blank],
    '5' => [:middle,
          :left,
          :middle,
          :right,
          :middle],
    '6' => [:middle,
          :left,
          :middle,
          :left_and_right,
          :middle],
    '7' => [:middle,
          :right,
          :blank,
          :right,
          :blank],
    '8' => [:middle,
          :left_and_right,
          :middle,
          :left_and_right,
          :middle],
    '9' => [:middle,
          :left_and_right,
          :middle,
          :right,
          :middle],
    '0' => [:middle,
          :left_and_right,
          :blank,
          :left_and_right,
          :middle]
  }
end
