# frozen_string_literal: true

require_relative "vt100/version"
require_relative "vt100/display_attributes"
require_relative "vt100/erase"

module Vt100
  include DisplayAttributes
  class Error < StandardError; end
end
