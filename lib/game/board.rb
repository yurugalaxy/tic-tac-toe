# frozen_string_literal: true

module GameBoard

        def self.print_board
                @board = <<~BOARD
                
                     |     |
                #{@sq1 || ' (1) '}|#{@sq2 || ' (2) '}|#{@sq3 || ' (3) '}
                     |     |
                ------------------
                     |     |
                #{@sq4 || ' (4) '}|#{@sq5 || ' (5) '}|#{@sq6 || ' (6) '}
                     |     |
                ------------------
                     |     |
                #{@sq7 || ' (7) '}|#{@sq8 || ' (8) '}|#{@sq9 || ' (9) '}
                     |     |
                BOARD
                puts @board
        end

        def self.update_board(square, side)
                colour = side == 'o' ? :blue : :red
                text = "  #{side}  ".colorize(colour)
                case square
                when 1
                        @sq1 = text
                when 2
                        @sq2 = text
                when 3
                        @sq3 = text
                when 4
                        @sq4 = text
                when 5
                        @sq5 = text
                when 6
                        @sq6 = text
                when 7
                        @sq7 = text
                when 8
                        @sq8 = text
                when 9
                        @sq9 = text
                end
                self.print_board
        end
end
