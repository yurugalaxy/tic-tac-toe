# frozen_string_literal: true

require_relative 'loop'

class Player
        include GameLoop
        attr_reader :history, :winner

        def initialize(name, side)
                @name = name
                @side = side
                @history = []
                @winner = false
        end
end