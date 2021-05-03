RSpec.describe Rack::FlocBlock do
  let(:app) do
    Rack::Builder.app do
      use Rack::FlocBlock
      run lambda { |env| [200, {"Content-Type" => "text/plain"}, "ok"] }
    end
  end

  describe "#call" do
    it "includes the Permissions-Policy header" do
      permission_policy = get("/").headers["Permissions-Policy"]
      expect(permission_policy).to include("interest-cohort=()")
    end
  end
end
