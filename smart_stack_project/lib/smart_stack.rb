require_relative 'stack.rb'

class SmartStack < Stack
    private 
    attr_writer :max_size
    attr_accessor :underlying_array
    
    public
    
    def initialize(num)
        @max_size = num
        @underlying_array = []
    end

    def max_size
        @max_size
    end

    def full?
        @underlying_array.length == @max_size
    end

    def push(*args)
        if args.length + @underlying_array.length > @max_size
            raise "stack is full"
        else
            new_items = args.flatten
            new_items.each {|item| @underlying_array.push(item) }
            @underlying_array.length
        end
    end

    require "byebug"
    
    def pop(n = nil)
        return [@underlying_array.pop]
        
        if n != nil && @underlying_array.length - n >= 1
            debugger
            removed_items = []
            removed_items << @underlying_array.pop(n)
            debugger
            removed_items
            debugger
        end
    end




end