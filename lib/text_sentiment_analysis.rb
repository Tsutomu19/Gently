def sentiment_from_text text_content:

    require "google/cloud/language"

    language = Google::Cloud::Language.language_service
    document = { content: text_content, type: :PLAIN_TEXT }  #contentの変更
    response = language.analyze_sentiment document: document
    sentiment = response.document_sentiment

    puts "Overall document sentiment: (#{sentiment.score})"
    puts "Sentence level sentiment:"

    sentences = response.sentences

    sentences.each do |sentence|
      sentiment = sentence.sentiment
      puts "#{sentence.text.content}: (#{sentiment.score})"
    end
  end

  sentiment_from_text(text_content: "こんにちは、私は元気です。")
