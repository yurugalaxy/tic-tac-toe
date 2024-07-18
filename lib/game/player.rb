# frozen_string_literal: true

require_relative 'loop'

class Player
        @@shared_history = []
        include GameLoop
        attr_reader :history, :winner

        def initialize(name, side)
                @name = name
                @side = side
                @history = []
                @winner = false
        end

        def take_turn
                square = 0
                while square < 1 || square > 9 || @@shared_history.include?(square) do
                        if @@shared_history.include?(square) 
                                puts "taken"
                        end
                square = gets.chomp.to_i
                end
                @@shared_history << square
                history << square unless history.include?(square)
                p history
                @winner = true if winner?
        end
end