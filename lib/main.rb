require_relative './text_sentiment_analysis.rb' # 同じ階層にあるのでこの表記va
require_relative './emoji.rb'
class Main
    def sentiment
        # text_content = params[]
        sentiment_from_text(text_content)
        add_emoji(score,magnitude)

    end
end


# コントローラーで呼ぶ