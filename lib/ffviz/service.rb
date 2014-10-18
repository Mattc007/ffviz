module FFViz
  class Service
    def self.create(params)
      host = params.fetch(:host)
      klass = host.to_s.classify
      Object.const_get("FFViz::Services::#{klass}").new(params)
    end
  end
end
