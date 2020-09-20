#!/usr/bin/env ruby
# https://edabit.com/challenge/3WbqSWZLQTsNZAXyZ

require 'minitest/autorun'

def chosen_wine(wines)
  return if wines.empty?
  return wines.first[:name] if wines.size == 1

  wines.sort { |a,b| a[:price] <=> b[:price] }[1][:name]
end

class CapToFrontTest < Minitest::Test
  def test_chosen_wine
    assert_equal 'Wine 9', chosen_wine([
      { name: "Wine A", price: 8.99 },
      { name: "Wine 32", price: 13.99 },
      { name: "Wine 9", price: 10.99 }
    ])
    assert_equal 'Wine A', chosen_wine([{ name: 'Wine A', price: 8.99 }])
    assert_nil chosen_wine([])
  end
end
