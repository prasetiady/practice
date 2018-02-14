require 'json'

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  low_head = nil
  low_tail = nil
  hi_head = nil
  hi_tail = nil
  
  current = head
  while not current.nil?
    val = current.val
    if val < x
      if low_head.nil?
        low_head = ListNode.new(val)
        low_tail = low_head
      else
        low_tail.next = ListNode.new(val)
        low_tail = low_tail.next
      end
    else
      if hi_head.nil?
        hi_head = ListNode.new(val)
        hi_tail = hi_head
      else
        hi_tail.next = ListNode.new(val)
        hi_tail = hi_tail.next
      end
    end
    current = current.next
  end
  
  new_head = nil
  if not low_head.nil?
    new_head = low_head
    low_tail.next = hi_head
  else
    new_head = hi_head
  end
  
  return new_head
end

def print(head)
  puts "DEBUG: val = #{head.val}"
  if head.next
    print(head.next)
  end
end

S = gets
X = gets.to_i

array = JSON.parse(S)

head = ListNode.new(array[0])
node = head

(1..array.size - 1).each do |i|
  new_node = ListNode.new(array[i])
  node.next = new_node
  node = new_node
end

print(head)

new_head = partition(head, 3)
puts "DEBUG: new head"
print(new_head)