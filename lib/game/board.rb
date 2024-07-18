# frozen_string_literal: true

class GameBoard
        def initialize
                @sq1 = '1'
                @sq2 = '2'
                @sq3 = '3'
                @sq4 = '4'
                @sq5 = '5'
                @sq6 = '6'
                @sq7 = '7'
                @sq8 = '8'
                @sq9 = '9'
        
                @sqX = 'x'
                @sqO = 'o'
                @board = ''
        end

        def print_board
                @board = <<~BOARD
                #{@sq1}|#{@sq2}|#{@sq3}
                -----
                #{@sq4}|#{@sq5}|#{@sq6}
                -----
                #{@sq7}|#{@sq8}|#{@sq9}
                BOARD
                puts @board
        end

        def update_board(square)
                case square
                when '1'
                        @sq1 = 'x'
                end
                print_board
        end
end
