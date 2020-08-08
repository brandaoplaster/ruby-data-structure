require_relative "node"

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def add_to_list(number)
    this_node = Node.new(number)
    if @head.nil?
      @head = this_node
      return
    end

    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = this_node
  end

  def print_list
    if @head.nil?
      puts "empty"
    else
      current_node = @head
      puts current_node.value
      while current_node = current_node.next_node
        puts current_node.value
      end
    end
  end

end