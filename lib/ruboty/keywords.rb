require 'ruboty'
require "ruboty/keywords/version"

module Ruboty
  module Handlers
    class Keywords < Base
      on(
        /foo/,
        name: 'foo',
        description: 'return bar'
      )

      def foo(message)
        message.reply("bar")
      end
    end
  end
end
