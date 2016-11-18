module Ruboty
  module Handlers
    class Keywords < Base
      on /keyword( me)?/, all: true, name: "keyword", description: "search for response if keyword exists"

      def keyword(message)
        if response = keyword_list.select { |key, value| key.to_s.match(/#{message[:keyword]}\d+/)}
          message.reply(response)
        end
      end

      private

      def keyword_list
        file = File.read("./keywords/responses.json")
        JSON.parse(file)
      end
    end
  end
end
