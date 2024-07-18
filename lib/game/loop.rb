# frozen_string_literal: true

module GameLoop
        WIN_COMBOS = [
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9],
                [1, 4, 7],
                [2, 5, 8],
                [3, 6, 9],
                [1, 5, 8],
                [3, 5, 7]
        ]

        def winner?
                WIN_COMBOS.each do |win_condition|
                        win_check = []
                        history.each do |square|
                                next unless win_condition.include?(square)

                                win_check << 1
                        end
                        return false unless win_check == [1, 1, 1]

                        return true
                end
        end
end
