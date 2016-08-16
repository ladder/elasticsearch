$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require "bundler/setup"
require 'rspec'
require 'rdf/elasticsearch'

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
  config.exclusion_filter = {
    ruby:           lambda { |version| RUBY_VERSION.to_s !~ /^#{version}/},
  }
end
