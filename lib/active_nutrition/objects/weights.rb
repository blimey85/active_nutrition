# encoding: UTF-8

module ActiveNutrition
  module Objects
    class Weights < Array
      def to_hash(options = {})
        options[:by] ||= :measurement
        inject({}) do |ret, weight|
          ret[weight.send(options[:by])] = weight.to_i.grams
          ret
        end
      end
    end
  end
end