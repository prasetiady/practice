class MinHeap
  def initialize()
    @heap = []
  end
  def insert(num)
    @heap << num
    heapify_up
  end
  def remove_min
    swap(0,@heap.size - 1)
    min = @heap.pop
    heapify_down
    min
  end
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
      min_child_index = left_child_index(index)
      if has_right_child(index)
        if @heap[left_child_index(index)] > @heap[right_child_index(index)]
          min_child_index = right_child_index(index)
        end
      end
      if @heap[index] > @heap[min_child_index]
        swap(index,min_child_index)
        index = min_child_index
      else
        break
      end
    end
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
  def empty?
    @heap.empty?
  end
end

def find_median (s_a)
  mid = s_a.size / 2
  median = s_a[mid]
  if s_a.size%2 == 0
    median = (s_a[mid-1] + s_a[mid]) / 2.0
  end
  median
end

n = gets.strip.to_i
a = []
(1..n).each do
  a << gets.to_i
end

heap = MinHeap.new()
a.each do |num|
  heap.insert(num)
end

s_a = []
until heap.empty?
  s_a << heap.remove_min
end

(1..s_a.size).each do |l|
  puts "%.1f" % find_median(s_a[0,l])
end
