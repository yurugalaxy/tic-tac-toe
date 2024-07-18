# frozen_string_literal: true

require_relative 'player/win'
require_relative 'board'

class Player
        @@shared_history = []
        include WinChecker
        include GameBoard
        attr_reader :history, :board, :side

        def initialize(side)
                @side = side
                @history = []
        end

        def take_turn
                square = gets.chomp.to_i
                while square < 1 || square > 9 || @@shared_history.include?(square) do
                        puts "Invalid! Please choose another square:"
                        square = gets.chomp.to_i
                end
                GameBoard.update_board(square, side)
                @@shared_history << square
                history << square
        end
end