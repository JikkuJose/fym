require 'unirest'

module FYM
  class RequiredParameterError < StandardError
  end

  class Converter

    def initialize(
          run_readability: true,
        run_markdownify: true,
                 output: :markdown,
                   html: nil,
                    url: nil
                  )
      raise RequiredParameterError unless( url or html )
      @run_readability = run_readability ? 1 : 0
      @run_markdownify = run_markdownify ? 1 : 0
      @output = output.to_s
      @url = url 
      @html = html
    end

    def response_body
      response.body
    end

    private

    def response
      Unirest.post base_url, parameters: parameters
    end

    def parameters
      params = {
          read: @run_readability,
            md: @run_markdownify,
        output: @output
      }

      if @url
        params[:u] = @url
      else
        params[:html] = @html
      end

      params

    end

    def base_url
      "http://fuckyeahmarkdown.com/go/"
    end

  end

end
