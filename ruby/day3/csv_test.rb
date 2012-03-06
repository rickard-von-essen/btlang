require "test/unit"
require "./acts_as_csv_module"
require "./csv"

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

class TreeExtTest < Test::Unit::TestCase

  def test_RubyCvs
    m = RubyCsv.new
    
    assert_equal(["first", "last", "country"], m.headers)
    assert_equal("[[\"Yukihiro\", \"Matsumoto\", \"Japan\"], [\"Bruce\", \"Tate\", \"USA\"]]", m.csv_contents.inspect)
  end
  
  def test_csv
    a = []
    c = Csv.new
    c.each { |row| a.push(row.one) }
    
    assert_equal(["lions", "toad"], a)
  end
end
