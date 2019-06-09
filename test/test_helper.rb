# frozen_string_literal: true

require 'simplecov'

SimpleCov.start { add_filter('test') }

require 'minitest/autorun'
require 'minitest/reporters'
require 'rack/test'

Minitest::Reporters.use!

OUTER_APP = Rack::Builder.parse_file('config.ru').first

class TestApp < Minitest::Test
  include Rack::Test::Methods

  def app
    OUTER_APP
  end
end
