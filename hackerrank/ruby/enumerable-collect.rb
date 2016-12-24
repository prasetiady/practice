def rot13(secret_messages)
  # your code here
  def rot13_message(message)
    def rot13_upcase_char(char)
      code = (char.ord + 13) % 91
      if code < 65
        code += 65
      end
      code.chr
    end
    chars = message.chars.map do |c|
      r = c
      if (c.ord > 64 && c.ord < 91)
          r = rot13_upcase_char(c)
      elsif (c.ord > 96 && c.ord < 123)
          r = rot13_upcase_char(c.upcase).downcase
      end
      r
    end
    chars.join
  end
  secret_messages.map { |message| rot13_message(message) }
end

rot13(["Why did the chicken cross the road?", "Gb trg gb gur bgure fvqr!"]).each { |message|
  puts message
}
