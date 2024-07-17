# frozen_string_literal: true

module GameLoop
        WIN_COMBOS = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,8], [3,5,7]]

        def take_turn
                square = gets.chomp.to_i
                history << square unless history.include?(square)
                p history
                if WIN_COMBOS.each.include?(history) then @winner = true
                end
        end

end