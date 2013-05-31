module Router
  class ApiConstraints
    def initialize(options)
      @version = options[:version]
      @default = options[:default]
    end

    def default?
      @default
    end

    def matches?(request)
      default? || request.headers['Accept'].include?("application/vnd.hatemap.v#{@version}")
    end
  end
end
