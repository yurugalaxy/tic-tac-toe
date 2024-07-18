# frozen_string_literal: true

require 'colorize'
require_relative 'game/player'

class Game
        def initialize
                @noughts = Player.new('o')
                @crosses = Player.new('x')
        end

        def play
                loop do
                        puts "Noughts:".colorize(:blue)
                        @noughts.take_turn
                        return "Noughts wins!".colorize(:green) if @noughts.winner?
                        puts "Crosses:".colorize(:red)
                        @crosses.take_turn
                        return "Crosses wins!".colorize(:green) if @crosses.winner?
                end
        end
end