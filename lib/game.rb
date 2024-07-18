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
                        if @crosses.winner == true
                                puts "Crosses wins!"
                                break
                        end
                        @noughts.take_turn
                        if @noughts.winner == true
                                puts "Noughts wins!"
                                break
                        end
                end
        end


end