# Set up gems listed in the Gemfile.
ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../../Gemfile", __dir__)

unless ENV["RAILS_ENV"] == "test"
  ENV["AVO_IN_DEVELOPMENT"] = "1"
end

require "bootsnap/setup" unless ENV["CI"] # Speed up boot time by caching expensive operations.
require "bundler/setup" if File.exist?(ENV["BUNDLE_GEMFILE"])
$LOAD_PATH.unshift File.expand_path("../../../lib", __dir__)
