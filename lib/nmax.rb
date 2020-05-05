# frozen_string_literal: true

require "nmax/version"
require "nmax/error"

module Nmax
  class << self
    def start(value, io)
      raise(Nmax::Error, 'No parameter N is given!') if value.nil?

      # fetch matching numbers
      until io.eof?
        data = io.read.scan(/\d{1,1000}/m).map(&:to_i)
      end

      # sort and max result
      result = data.uniq.max(Integer(value)).join(', ')

      #display
      puts "First #{value} max numbers is #{result}"
    rescue Nmax::Error => e
      puts e.message
    end
  end
end