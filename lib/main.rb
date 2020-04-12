require_relative './text_sentiment_analysis.rb'
require_relative './emoji.rb'

# 投稿を取得
# テキストを定義
class Main
    def sentiment
        sentiment_analysis(text)
        add_emoji(score,magnitude)
    end
end


# コントローラーで呼ぶ