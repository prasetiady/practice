class Heap
  def initialize()
    @heap = []
  end
  def empty?
    @heap.empty?
  end
  def size
    @heap.size
  end
  def root
    @heap.first
  end
  def remove_root
    swap(0,@heap.size - 1)
    min = @heap.pop
    heapify_down
    min
  end
  def insert(num)
    @heap << num
    heapify_up
  end
  def swap(index_a,index_b)
    temp = @heap[index_a]
    @heap[index_a] = @heap[index_b]
    @heap[index_b] = temp
  end
  def parent_index(index) ((index + 1) / 2) - 1 end
  def left_child_index(index) ((index + 1) * 2) - 1 end
  def right_child_index(index) (index + 1) * 2 end
  def has_left_child(index) @heap.size > left_child_index(index) end
  def has_right_child(index) @heap.size > right_child_index(index) end
  def to_s
    @heap
  end
  def heapify_down
    raise "method missing"
  end
  def heapify_up
    raise "method missing"
  end
end

class MinHeap < Heap
  def heapify_up
    index = @heap.size - 1
    while index > 0
      if @heap[index] >= @heap[parent_index(index)] then break end
      swap(index,parent_index(index))
      index = parent_index(index)
    end
  end
  def heapify_down
    index = 0
    while index < @heap.size
      if !has_left_child(index) then break end
      child_index = left_child_index(index)
      if has_right_child(index)
        if @heap[left_child_index(index)] > @heap[right_child_index(index)]
          child_index = right_child_index(index)
        end
      end
      if @heap[index] > @heap[child_index]
        swap(index,child_index)
        index = child_index
      else
        break
      end
    end
  end
end

class MaxHeap < Heap
  def heapify_up
    index = @heap.size - 1
    while index > 0
      if @heap[index] <= @heap[parent_index(index)] then break end
      swap(index,parent_index(index))
      index = parent_index(index)
    end
  end
  def heapify_down
    index = 0
    while index < @heap.size
      if !has_left_child(index) then break end
      child_index = left_child_index(index)
      if has_right_child(index)
        if @heap[left_child_index(index)] < @heap[right_child_index(index)]
          child_index = right_child_index(index)
        end
      end
      if @heap[index] < @heap[child_index]
        swap(index,child_index)
        index = child_index
      else
        break
      end
    end
  end
end

n = gets.strip.to_i
a = []
(1..n).each do
  a << gets.to_i
end

min_heap = MinHeap.new
max_heap = MaxHeap.new

def median(min_heap, max_heap)
  if min_heap.size == max_heap.size
    (min_heap.root + max_heap.root) / 2.0
  elsif min_heap.size > max_heap.size
    min_heap.root
  else
    max_heap.root
  end
end

min_heap.insert(a.shift)
puts "%.1f" % median(min_heap, max_heap)

until a.empty?
  num = a.shift
  if num > min_heap.root
    min_heap.insert(num)
  else
    max_heap.insert(num)
  end
  # balancing
  if min_heap.size > max_heap.size + 1
    max_heap.insert(min_heap.remove_root)
  elsif max_heap.size > min_heap.size + 1
    min_heap.insert(max_heap.remove_root)
  end
  puts "%.1f" % median(min_heap, max_heap)
end
