require 'mandate'
require 'json'

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.setup

module SnippetExtractor
  def self.process(event:, context:) = ProcessRequest.(event, context)
end
