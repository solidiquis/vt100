# frozen_string_literal: true

module Vt100
  module DisplayAttributes 
    def display_attr_esc(attr, txt)
      "\x1B[#{attr}m#{txt}\x1B[0m"
    end

    def bright(txt)
      display_attr_esc 1, txt
    end

    def underscore(txt)
      display_attr_esc 4, txt
    end

    def hidden(txt)
      display_attr_esc 8, txt
    end

    def fg_black(txt)
      display_attr_esc 30, txt
    end

    def fg_red(txt)
      display_attr_esc 31, txt
    end

    def fg_green(txt)
      display_attr_esc 32, txt
    end

    def fg_yellow(txt)
      display_attr_esc 33, txt
    end

    def fg_blue(txt)
      display_attr_esc 34, txt
    end

    def fg_magenta(txt)
      display_attr_esc 35, txt
    end

    def fg_cyan(txt)
      display_attr_esc 36, txt
    end

    def fg_white(txt)
      display_attr_esc 37, txt
    end

    def bg_black(txt)
      display_attr_esc 40, txt
    end

    def bg_red(txt)
      display_attr_esc 41, txt
    end

    def bg_green(txt)
      display_attr_esc 42, txt
    end

    def bg_yellow(txt)
      display_attr_esc 43, txt
    end

    def bg_blue(txt)
      display_attr_esc 44, txt
    end

    def bg_magenta(txt)
      display_attr_esc 45, txt
    end

    def bg_cyan(txt)
      display_attr_esc 46, txt
    end

    def bg_white(txt)
      display_attr_esc 47, txt
    end
  end
end
