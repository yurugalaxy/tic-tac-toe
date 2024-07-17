# frozen_string_literal: true

module GameBoard
        @board = <<~B
        |     |     |     |
        |  1  |  2  |  3  |
        |     |     |     |
        ___________________
        |     |     |     |
        |  4  |  5  |  6  |
        |     |     |     |
        ___________________
        |     |     |     |
        |  7  |  8  |  9  |
        |     |     |     |
        B

        def self.display
                puts @board
        end

end
