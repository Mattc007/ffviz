module FFViz
  module Services
    class Espn

      ENDPOINT = ""

      def initialize(params)
        @league = params.fetch(:league)
        @season = params.fetch(:season)
      end

      def process
      end
    end
  end
end
