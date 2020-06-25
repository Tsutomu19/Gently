require "google/cloud/language"

class TextSentimentAnalysis
  def sentiment_from_text(text_content)

      language = Google::Cloud::Language.language_service
      document = { content: text_content, type: :PLAIN_TEXT }
      response = language.analyze_sentiment document: document
      sentiment = response.document_sentiment

      sentences = response.sentences

      sentences.each do |sentence|
        sentiment = sentence.sentiment
        puts "#{sentence.text.content}: (#{sentiment.score})"
      end

      score = sentences[0].sentiment.score * 10
  end

  def add_emoji(score,magnitude)

      emoji_array_positive = ["🙂","🙃","😀","😃","😄","😆","😝","😤","🤩","🥳"]
      emoji_array_negative = ["😐","😕","😟","😓","😔","😖","😫","😢","😭","🤪"]

      if score <= 0
          emoji_array_negative[-1 * score]
      else
          emoji_array_positive[score]
      end

  end
end


