# Table class for the Toy Robot Simulator
# Manipulates the table

class Table
    attr_accessor :table
    @t_size = 0;
    def initialize(size)
        @table = Array.new(size) { Array.new(size, "x") }
        @t_size = size - 1
    end

    def piece_removed (pos)
        @table[(pos[1] - @t_size).abs][pos[0]] = "x"
        @table
    end

    def piece_added (pos)
        @table[(pos[1] -  @t_size).abs][pos[0]] = "O"
        @table
    end
    
    def print_table
        puts "\n"
        puts @table.map { |x| x.join(" ") }
        @table
    end
end