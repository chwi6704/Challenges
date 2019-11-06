class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

class Stack
    attr_reader :data

    def initialize
      @data = nil
    end

    def push(value)
      @data = LinkedListNode.new(value, @data)

    end

    def pop
        value = @data&.value
        @data = @data&.next_node
        value
    end

    def is_empty?
      @data.nil?
    end
  end
    
  def reverse_list(list)
    previous_node = nil

    while list != nil
     head = list  
      list = list.next_node
      head.next_node = previous_node
      previous_node = head
    end
    return head
  end 

end

stack = Stack.new

stack.push(37)
stack.push(99)
stack.push(12)
puts stack.pop
puts stack.pop
puts stack.pop

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"
print_values(reverse_list(node3))


 
