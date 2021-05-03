module Rack
  class FlocBlock
    class Railtie < ::Rails::Railtie
      initializer "rack.floc_block.initializer" do |app|
        app.config.middleware.use Rack::FlocBlock
      end
    end
  end
end
