module Presenters
  class Base
    attr_accessor :model

    def prepare_view_data hash
      hash.each do |name, value|
        instance_variable_set("@#{name}", value)
      end
    end
  end
end
