class Emoji
    def get_emoji(score,magnitude)

        score = sentences[0].sentiment.score * 10

        emoji_array_positive = ["🙂","🙃","😀","😃","😄","😆","😝","😤","🤩","🥳"]
        emoji_array_negative = ["😐","😕","😟","😓","😔","😖","😫","😢","😭","🤪"]

        if score <= 0
            emoji_array_negative[-1 * score]
        else
            emoji_array_positive[score]
        end
    end
end
