# Modify CSV to support #each() and return a CsvRow object.

# Use #method_missing on that CsvRow to return the value for a given heading

# Example CSV:
# one, two
# lions, tigers

# Example code:
# csv = RubyCsv.new
# csv.each {|row| puts row.one}
# => lions

load 'acts_as_csv_module.rb'

class CsvRow

  def initialize(headers, row)
    @headers = headers
    @row = row
  end
    
  def method_missing(name, *args)
    @row[@headers.index("#{name}")]
  end
  
end

class Csv
  include ActsAsCsv
  acts_as_csv
  
  def each (&block)
    @csv_contents.each { |row| 
      block.call(CsvRow.new(@headers, row)) 
    }
  end
end

#m = Csv.new
#m.each { |row| puts "#{row.two}" }
