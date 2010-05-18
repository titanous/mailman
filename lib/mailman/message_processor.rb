module Mailman
  # Turns a raw email into a +Mail::Message+ and passes it to the router.
  class MessageProcessor

    # @param [Hash] options the options to create the processor with
    # @option options [Router] :router the router to pass processed
    #   messages to
    def initialize(options)
      @router = options[:router]
    end

    # Converts a raw email into a +Mail::Message+ instance, and passes it to the
    # router.
    # @param [String] message the message to process
    def process(message)
      @router.route(Mail.new(message))
    end

  end
end