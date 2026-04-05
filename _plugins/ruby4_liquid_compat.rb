# frozen_string_literal: true

# Liquid 4.x (Jekyll 3.9) still calls Object#tainted? for sandboxing; Ruby 4.0 removed it entirely.
# GitHub Pages builds with Ruby 3.3.x where these methods still exist as no-ops, so this file is a no-op there.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end

unless Object.method_defined?(:untaint)
  class Object
    def untaint
      self
    end
  end
end
