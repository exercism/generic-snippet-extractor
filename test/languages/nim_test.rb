require "test_helper"

module SnippetExtractor
  module Languages
    class NimTest < Minitest::Test
      def test_full_example
        code = <<~CODE
          # This is a file
          # With some comments in it
          # And a blank line ⬆️
          # It has some requires like this:
          import json
          export json
          from json import nil
          # And then eventually the code
          proc twoFer =
            ##[ doc comment ]##
            ## more doc comment
            discard
        CODE

        expected = <<~CODE
          proc twoFer =
            discard
        CODE

        assert_equal expected, ExtractSnippet.(code, :nim)
      end
    end
  end
end
