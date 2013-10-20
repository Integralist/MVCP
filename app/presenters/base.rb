module Presenters
  class Base
    def load_model model
      @model = model
    end

    def prepare_view_data hash
      hash.each do |name, value|
        instance_variable_set("@#{name}", value)
      end
    end
  end
end
