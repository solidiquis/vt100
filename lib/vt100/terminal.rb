# frozen_string_literal: true

require "io/console"

module Vt100
  module Terminal
    def terminal_dimensions
      $stdout.winsize
    end

    def unbuffer_stdin
      system "stty", "-f", "/dev/tty", "cbreak", "min", "1"
    end

    def unecho_stdin
      system "stty", "-f", "/dev/tty", "-echo"
    end
  end
end
