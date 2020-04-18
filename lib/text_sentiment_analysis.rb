require "google/cloud/language"

class TextSentimentAnalysis
  def sentiment_from_text(text_content)

      language = Google::Cloud::Language.language_service
      document = { content: text_content, type: :PLAIN_TEXT }  #contentの変更
      response = language.analyze_sentiment document: document
      sentiment = response.document_sentiment                #document_sentimentとは

      # puts "Overall document sentiment: (#{sentiment.score})"
      # puts "Sentence level sentiment:"

      sentences = response.sentences

      sentences.each do |sentence|
        sentiment = sentence.sentiment
        puts "#{sentence.text.content}: (#{sentiment.score})"
      end

      score = sentences[0].sentiment.score * 10

  end
end


