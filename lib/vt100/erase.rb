# frozen_string_literal: true

module Vt100
  module Erase
    def erase_line_esc(attr)
      "\x1B[#{attr}K"
    end

    def erase_screen_esc(attr)
      "\x1B[#{attr}J"
    end

    def erase_end_of_line
      print erase_line_esc ""  
    end

    def erase_start_of_line 
      print erase_line_esc 1
    end

    def erase_line
      print erase_line_esc 2
    end

    def erase_down
      print erase_screen_esc ""
    end

    def erase_up
      print erase_sceen_esc 1
    end

    def erase_screen
      print erase_screen_esc 2
    end
  end
end
