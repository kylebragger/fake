class Fake
  VOWELS = %w{a e i o u}
  CONS = ('a'..'z').to_a - VOWELS

  class << self
    def word(len)
      len = 3 if len < 3

      out = ''
      len.times do |i|
        # the pattern is cvc(vcv...)
        out += i.odd? ? VOWELS.sample : CONS.sample
      end
      out
    end
  end
end

if $0 == __FILE__
  puts Fake.word(2)
  puts Fake.word(5)
  puts Fake.word(7)
end