# frozen_string_literal: true

require_relative 'game/player'

class Game
        def initialize
                @noughts = Player.new('o')
                @crosses = Player.new('x')
        end

        def play
                loop do
                        puts "Noughts:"
                        @noughts.take_turn
                        if @noughts.winner?
                                puts "Noughts wins!"
                                break
                        end
                        puts "Crosses:"
                        @crosses.take_turn
                        if @crosses.winner?
                                puts "Crosses wins!"
                                break
                        end
                end
        end


end