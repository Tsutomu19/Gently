require_relative './text_sentiment_analysis.rb' # 同じ階層にあるのでこの表記va
require_relative './emoji.rb'
class Main
    def sentiment
        sentiment_from_text(params[text_content])
        # binding.pry
        add_emoji(score,magnitude)

    end
end


# コントローラーで呼ぶ