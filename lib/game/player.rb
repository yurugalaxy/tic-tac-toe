# frozen_string_literal: true

require_relative 'win'

class Player
        @@shared_history = []
        include WinChecker
        attr_reader :history

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
                @@shared_history << square
                history << square
        end
end