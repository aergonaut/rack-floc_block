require "rack/floc_block/version"
require "rack/utils"

module Rack
  class FlocBlock
    PERMISSIONS_POLICY = "Permissions-Policy"

    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)
      headers = Rack::Utils::HeaderHash[headers]

      permissions_policy = headers[PERMISSIONS_POLICY] || ""

      if !permissions_policy.match?(/interest\-cohort/)
        policies = permissions_policy.split(",").map(&:strip)
        policies << "interest-cohort=()"
        headers[PERMISSIONS_POLICY] = policies.join(", ")
      end

      [status, headers, body]
    end
  end
end
