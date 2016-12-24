def group_by_marks(marks, n)
  group = marks.delete_if { |key,value| value.nil? }
               .group_by { |name,mark| mark > n }
  group.each do |key, value|
    group[key] = value.map { |item| [item[0].to_s, item[1]]}
  end
  {
    "Failed" => group[false],
    "Passed" => group[true]
  }.delete_if { |key,value| value.nil? }
end

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60, "Tes":nil}
p group_by_marks(marks, 20)
