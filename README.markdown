# fym

API wrapper for [FuckYeahMarkdown][fym] packaged as a Ruby gem.

## Installation

    $ gem install fym

## Instructions

``` ruby
require 'fym'

FYM::Converter.new(url: 'http://blog.com/article', run_markdownify: true).response_body #=> <Markdown converted string of the url>
```

## Options

                url: 'http://blog.com/article'
               html: '<article>html with other tags</article>'
             output: :markdown || :url || :json
    run_markdownify: true || false
    run_readability: true || false

### Notes

* First options represents the default values.
* Provide either url or html.

## Credits

* [Unirest][u]

## Further

* Render Markdown in CLI using [nd][nd]

[fym]: http://fuckyeahmarkdown.com
[nd]: https://www.npmjs.org/package/nd
[u]: http://unirest.io
