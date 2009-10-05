class NumberToLcd
  class << self
    def convert(this_number)
      digits = digits_for(this_number)
      lines_for_digits = lines_for_these(digits)
      strings_for_lines = strings_for_these(lines_for_digits)
      lines = strings_for_lines.transpose
      full_lines = combine(lines)
      full_lines.join("\n")
    end

    def combine(lines)
      lines.map { |line| line.join(' ') }
    end
    def strings_for_these(lines)
      lines.map { |line_type| lines_to_strings(line_type) }
    end
    def lines_for_these(digits)
      digits.map { |digit| lines_for(digit) }
    end
    def digits_for(number)
      number.to_s.split('')
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
