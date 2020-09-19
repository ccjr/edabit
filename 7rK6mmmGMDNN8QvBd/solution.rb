#!/usr/bin/env ruby
# https://edabit.com/challenge/7rK6mmmGMDNN8QvBd

require 'minitest/autorun'
require 'byebug'

def cap_to_front(str)
  return str if str == str.upcase

  result = ''
  upcase_letters = 0

  str.each_char do |c|
    if c == c.upcase
      result.insert(upcase_letters, c)
      upcase_letters += 1
    else
      result << c
    end
  end
  result
end

class CapToFrontTest < Minitest::Test
  def test_cap_to_front
    assert_equal('APhpy', cap_to_front("hApPy"))
    assert_equal('MENTmove', cap_to_front("moveMENT"))
    assert_equal('OCAKEshrt', cap_to_front("shOrtCAKE"))
  end
end
