require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordformatter')

class TestWordFormatter < MiniTest::Test

  def setup
    @formatter = WordFormatter.new("format this string")
  end

  def test_upcase
    assert_equal("FORMAT THIS STRING", @formatter.upcase)
  end

  def test_upper_camelcase
    assert_equal("FormatThisString", @formatter.upper_camelcase)
  end

end