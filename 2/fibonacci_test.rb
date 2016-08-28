#!/usr/bin/env ruby
# frozen_string_literal: false

gem 'minitest', '>= 5.0.0'
gem 'byebug'
require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require_relative 'fibonacci'

class FibonacciTest < Minitest::Test
  def test_max_3
    assert_equal [1, 1, 2, 3], Fibonacci.new(max: 3).terms
  end

  def test_max_4
    assert_equal [1, 1, 2, 3], Fibonacci.new(max: 4).terms
  end

  def test_max_6
    assert_equal [1, 1, 2, 3, 5], Fibonacci.new(max: 6).terms
  end

  def test_sum_max_3
    assert_equal 2, Fibonacci.new(max: 3).sum
  end

  def test_sum_max_8
    assert_equal 10, Fibonacci.new(max: 8).sum
  end

  def test_sum_max_8
    assert_equal 4613732, Fibonacci.new(max: 4_000_000).sum
  end
end
