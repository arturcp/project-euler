#!/usr/bin/env ruby
# frozen_string_literal: false

gem 'minitest', '>= 5.0.0'
gem 'byebug'
require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require_relative 'multiples'

class MultiplesTest < Minitest::Test
  def test_sum_below_6
    assert_equal 8, Multiples.new(3, 5).sum(below: 6)
  end

  def test_sum_below_10
    assert_equal 23, Multiples.new(3, 5).sum(below: 10)
  end

  def test_sum_below_100
    assert_equal 2318, Multiples.new(3, 5).sum(below: 100)
  end

  def test_sum_below_1000
    assert_equal 233168, Multiples.new(3, 5).sum(below: 1000)
  end
end
