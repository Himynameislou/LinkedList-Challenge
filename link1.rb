class LinkedlistNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} -->"
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedlistNode.new(37)
node2 = LinkedlistNode.new(99, node1)
node3 = LinkedlistNode.new(12, node2)

print_values(node3)

puts "---------"

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data=LinkedlistNode.new(value, @data)

  end

  def pop
    return print "nil\n" if @data.nil
    print "#{@data.value}\n"
    @data=@data.next_node
  end

  def is_empty?
    @data.nil?
  end
end


def reverse_list(list)
  stack =Stack.new
  while list
    stack.push(list.value)
    list=list.next_node
  end

  return stack.data
end


  
revlist = reverse_list(node3)

print_values(revlist)