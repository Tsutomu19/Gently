def sentiment_from_text(text_content)　　# 修正
    require "google/cloud/language"

    language = Google::Cloud::Language.language_service
    document = { content: text_content, type: :PLAIN_TEXT }  #contentの変更
    response = language.analyze_sentiment document: document
    sentiment = response.document_sentiment                #document_sentimentとは

    # puts "Overall document sentiment: (#{sentiment.score})"
    # puts "Sentence level sentiment:"

    sentences = response.sentences #sentencesとは

    sentences.each do |sentence|
      sentiment = sentence.sentiment
      puts "#{sentence.text.content}: (#{sentiment.score})"
    end
  end

