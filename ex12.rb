#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.23.2013
# From: http://ruby.learncodethehardway.org/book/ex12.html

require 'open-uri'
# require: runs another file.  It also tracks what you've required in the past and won't require the same file twice.
# include: takes all methods from another module and includes them in the current module.
#   it is the primary way to extend classes with other modules (aka mix-ins)

# note: this does not work exactly like the example
open("https://www.ruby-lang.org/en") do |f|
    f.each_line {|line| p line}
    puts f.base_uri         # <URI::HTTP:0x40e6f2 URL:http://www.ruby-lang.org/en/>
    puts f.content_type     # "text/html"
    puts f.charset          # "iso-8858-1
    puts f.content_encoding # []
    puts f.last_modified    # Thu Dec 05 02:45:02 UTC 2002
end

# when using RVM ruby looks under the .rvm/gems/ruby version directory
# an easy way to identify the location of this directory is to run rvm gemdir
