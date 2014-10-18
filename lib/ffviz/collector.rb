module FFViz
  class Collector
    def initialize(params)
      @host = params.fetch(:host, FFViz::App::DEFAULT_HOST)
      @league_id = params.fetch(:league, FFViz::App::DEFAULT_LEAGUE_ID)
      @season = params.fetch(:season, FFViz::App::DEFAULT_SEASON)
    end

    def data
      service.process
    end

    private

    def service
      @service ||= FFViz::Service.new(@host)
    end
  end
end
