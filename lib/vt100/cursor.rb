# frozen_string_literal: true

module Vt100
  module Cursor
    def cursor_up(n)
      print "\x1B[#{n}A"
    end

    def cursor_down(n)
      print "\x1B[#{n}B"
    end

    def cursor_forward(n)
      print "\x1B[#{n}C"
    end

    def cursor_backward(n)
      print "\x1B[#{n}D"
    end

    def cursor_home
      print "\x1B[H"
    end

    def cursor_hide
      print "\x1B[?25l"
    end

    def cursor_show
      print "\x1B[?25h"
    end
  end
end
