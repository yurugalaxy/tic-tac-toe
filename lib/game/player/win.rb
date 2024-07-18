# frozen_string_literal: true

module WinChecker
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
                win_tracker = []
                WIN_COMBOS.each do |win_condition|
                        win_progress = []
                        history.each do |hist|
                                win_progress << 1 if win_condition.include?(hist)
                        end
                        win_tracker << win_progress
                end
                return false unless win_tracker.include?([1, 1, 1])
                
                return true
        end
end
