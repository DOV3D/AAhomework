def sluggish_octopus
   arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
    longest = arr.first
    len = longest.length
   (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            if arr[i].length > arr[j].length
               if arr[i].length > len 
                    longest = arr[i] 
                    len = longest.length
               end
            else
                if arr[j].length > len
                    longest = arr[j] 
                    len = longest.length
                end
            end
        end 
    end
    longest
end

# p sluggish_octopus

class Array
 
  def merge_sort(&prc)
    prc ||= Proc.new { |a, b| a <=> b }

    return self if self.length <= 1

    mid = self.length / 2
    sorted_left = self.take(mid).merge_sort(&prc)
    sorted_right = self.drop(mid).merge_sort(&prc)

   sorted = Array.merge(sorted_left, sorted_right, &prc)
   sorted[-1]
  end

  
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first.length, right.first.length)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end
# p ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'].merge_sort

    def dominant_octopus(arr)
        prc = Proc.new {|a,b| b.length <=> a.length}
        arr.merge_sort(&prc)[0]
    end
  
arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p dominant_octopus(arr)

    def clever_octopus(arr)
        longest = arr.first
        arr.each do |ele|
            if ele > longest
                longest = ele
            end
        end
        longest
    end


