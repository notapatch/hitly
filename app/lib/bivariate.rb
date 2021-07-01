class Bivariate
  ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".chars

  def self.encode(number)
    return ALPHABET[0] if number.zero?

    str = ""
    base = ALPHABET.length
    while number.positive?
      str << ALPHABET[number.modulo(base)]
      number /= base
    end
    str.reverse
  end

  def self.decode(str)
    i = 0
    base = ALPHABET.length
    str.each_char { |c| i = i * base + ALPHABET.index(c) }
    i
  end
end
