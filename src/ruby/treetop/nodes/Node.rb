require 'treetop'

class Node < Treetop::Runtime::SyntaxNode
  def to_html
    puts "default to_html"
  end
  def end_html
    puts "default end_html"
  end
end
