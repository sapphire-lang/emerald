#!/usr/bin/env ruby

require 'treetop'
require_relative 'Node'

# elements[0] will be the actual tag.
# elements[2] will be an optional string
# elements[4] is the attribute list
class TagStatement < Node
  def to_html
    if elements[4].is_a?(AttributeList)
      puts "<#{elements[0].text_value}#{elements[4].to_html()}>#{elements[2].text_value.delete! '(),'}"
    else
      puts "<#{elements[0].text_value} #{elements[2].to_html("") unless elements[2].empty?}>"
    end
  end
end
