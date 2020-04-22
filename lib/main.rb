require_relative './text_sentiment_analysis.rb'
require_relative './emoji.rb'
class Main
    def sentiment
        # text_content = params[]
        sentiment_from_text(text_content)
        add_emoji(score,magnitude)

    end
end


# コントローラーで呼ぶ