Ruby
====
 - [Ruby](http://www.ruby-lang.org/)
 - Version: _1.9.3p0_

Day 1 ![Check](../img/check.png)
====

Find:
-----
 - The Ruby API:
  - Core [online](http://www.ruby-doc.org/core-1.9.3/) [local](file:///home/rickard/doc/ruby_1_9_2_core/index.html)
  - Std-lib [online](http://www.ruby-doc.org/stdlib-1.9.3/) [local](file:///home/rickard/doc/ruby_1_9_2_stdlib/index.html) 
 - The free online version of [_Programming Ruby: The Pragmatic Programmer's Guide_](http://ruby-doc.org/docs/ProgrammingRuby/)
 - A method that substitutes part of a string
  - `#gsub(regex, replacemnet)`
 - Information about Ruby's regular expressions ![Check](../img/check.png)
 - Information about Ruby's ranges ![Check](../img/check.png)
 
Do:
---

 - Print the string "Hello world." ![Check](../img/check.png)
 - For the string "Hello Ruby" find the index of the word _Ruby_. ![Check](../img/check.png) 
 - Print your name 10 times ![Check](../img/check.png)
 - Run a Ruby program from a file 
  - `ruby <file.rb>`
 
See **day1/day1.rb**
 
Day 2
====

Find: 
----
 - Find out how to access files with and with out code blocks. What is the benefit with a code block?
 <pre><code>
  f = File.open("file.txt")
  ...
  f.close
 </code></pre>
 Or
 <pre><code>
  File.open("file.txt") { ... }
 </code></pre> 
 - How would you translate a hash to an array? Can you translate arrays to hashes?
  - `#to_a -> array`
  - No
 - Can you iterate through a hash?
  - `#each*`
 - You can use Ruby arrays as stacks. What other common data structures do arrays support?
  - Array, stack, list.
 
Do:
---
 - Print the content of an array of sixteen numbers, four numbers at a time, using _each_. Now do the same with _each___slice_ in _Enumerable_. ![Check](../img/check.png)
 - The _Tree_ class was interesting but did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure with hashes and arrays. You should be able to specify a tree like  this: _{'grandpa' => {'dad' => {'child 1' => }, 'child 2' => {}}, 'uncle' => { 'child3' => {}, 'child 4' => {}}}_. ![Check](../img/check.png)
 - Write a simple grep that print the lines of a file having any occurrences of a phrase anywhere in the line. You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.
![Check](../img/check.png)

See: 

 - **day2/day2.rb**
 - **day2/Tree-ext.rb**
 - **day2/grep.rb**

Day 3
====

Do:
--
 - Modify the CSV application to support an _each_ method to return a _CsvRow_ object. Use _method___missing_ on CsvRow to return the value for the column for a given heading. For example the file:

<pre>
one     two
lions   tigers
</pre>  
Allow an API that works like this:

      csv = Csv.new
      csv.each {|row| puts row.one}
  
This should print _lions_.

See: 

 - **day3/cvs.rb**
 - **day3/cvs_test.rb**
 
