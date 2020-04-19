class ChangeEmoji
    def get_emoji(score,magnitude)
# sentencesが何か
        score = sentences[0].sentiment.score * 10

        emoji_array_positive = ["🙂","🙃","😀","😃","😄","😆","😝","😤","🤩","🥳"]
        emoji_array_negative = ["😐","😕","😟","😓","😔","😖","😫","😢","😭","🤪"]

        if score <= 0
            emoji_array_negative[-1 * score] # そのまま返り値に
        else
            emoji_array_positive[score]
        end
    end
end
