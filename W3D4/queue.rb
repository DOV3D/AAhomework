class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end

end

q = Queue.new
p q.enqueue(3)
p q.enqueue(7)
p q.enqueue(5)
p q.enqueue(1)
p q.dequeue
p q.peek
