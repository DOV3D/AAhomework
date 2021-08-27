class Stack
    
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)

    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end
end

s = Stack.new
p s.push(2)
p s.push(5)
p s.push(8)
p s.pop
p s.peek
p s



