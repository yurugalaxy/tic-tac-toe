# frozen_string_literal: true

require_relative 'game/player'

class Game
        def initialize
                @noughts = Player.new('noughts', 'o')
                @crosses = Player.new('crosses', 'x')
        end

        def play
                loop do
                        @crosses.take_turn
                        break if @crosses.winner == true
                        @noughts.take_turn
                        break if @noughts.winner == true
                end
        end


end