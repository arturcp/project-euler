#!/usr/bin/env ruby
# frozen_string_literal: false

gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'prime_factor'

class PrimeFactorTest < Minitest::Test
  def test_prime_factors_for_12
    assert_equal [2, 2, 3], PrimeFactor.new(12).prime_factors
  end

  def test_prime_factors_for_147
    assert_equal [3, 7, 7], PrimeFactor.new(147).prime_factors
  end

  def test_prime_factors_for_90
    assert_equal [2, 3, 3, 5], PrimeFactor.new(90).prime_factors
  end

  def test_prime_factors_for_13195
    assert_equal [5, 7, 13, 29], PrimeFactor.new(13195).prime_factors
  end
end
