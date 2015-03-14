require 'spec_helper'

describe 'Rack::Pratchett' do

  let(:app) {
    Rack::Builder.new do
      use Rack::Pratchett
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ["GNU Terry Pratchett"]] }
    end
  }

  specify 'includes X-Clacks-Overhead header' do
    response = Rack::MockRequest.new(app).get('/')

    expect(response.headers).to include 'X-Clacks-Overhead'
  end
end
