module Jekyll
  class PostImageTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      @assets_base = context.environments.first["page"]["assets_base"]
      "/assets/images/posts/#{@assets_base}/#{@text}"
    end
  end
end

Liquid::Template.register_tag('post_image', Jekyll::PostImageTag)
