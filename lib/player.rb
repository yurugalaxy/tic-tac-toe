# frozen_string_literal: true

require_relative 'winner'

class Player
        include Winner?
        def initialize(side)
                @side = side
                @history = []
        end

        def take_turn
                puts "Please choose a square from the board:"
                square = gets.chomp.to_i
                @history << square
                p @history
        end
end