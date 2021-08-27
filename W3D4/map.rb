class Map
    def initialize
        @map = []
    end

    def set(key,value)
        @map.each do |pair|
            if pair[0] == key
                pair[1] = value
            end
        end
        @map.push([key,value])
    end

    def get(key)
        @map.each do |pair|
            if pair[0] == key
                return pair[1]
            end
        end
        nil
    end

    def delete(key)
        @map.each do |pair|
            if pair[0] == key
                pair[0] = nil
                pair[1] = nil
                @map.delete(nil)
            end
        end
    end


    def show
    @map.each do |pair|
        puts "#{pair}  "
    end
    end
end

