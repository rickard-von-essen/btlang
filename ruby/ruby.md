Ruby
====
 - [Ruby](http://www.ruby-lang.org/)
 - Version: _ruby 1.8.7_

Day 1
====

Find:
-----
 - The Ruby API
 - The free online version of _Programming Ruby: The Pragmatic Programmer's Guide_
 - A method that substitutes part of a string
 - Information about Ruby's regular expressions
 - Information about Ruby's ranges
 
Do:
---

 - Print the string "Hello world."
 - For the string "Hello Ruby" find the index of the word _Ruby_. 
 - Print your name 10 times
 - Run a Ruby program from a file
 
Day 2
====

Find: 
----
 - Find out how to access files with and with out code blocks. What is the benefit with a code block?
 - How would you translate a hash to an array? Can you translate arrays to hashes?
 - Can you iterate through a hash?
 - You can use Ruby arrays as stacks. What other common data structures do arrays support?
 
Do:
---
 - Print the content of an array of sixteen numbers, four numbers at a time, using _each_. Now do the same with _each___slice_ in _Enumerable_.
 - The _Tree_ class was interesting but did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure with hashes and arrays. You should be able to specify a tree like  this: _{'grandpa' => {'dad' => {'child 1' => }, 'child 2' => {}}, 'uncle' => { 'child3' => {}, 'child 4' => {}}}_.
 - Write a simple grep that print the lines of a file having any occurrences of a phrase anywhere in the line. You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.

Day 3
====

Do:
--
 - Modify the CSV application to support an _each_ method to return a _CsvRow_ object. Use _method___missing_ on CsvRow to return the value for the column for a given heading. For example the file:
 
_one, two
lions, tigers_
  
Allow an API that works like this:

      csv = RubyCsv.new
      csv.each {|row| puts row.one}
  
This shoul print _lions_.
