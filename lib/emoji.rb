class ChangeEmoji
    def get_emoji(score,magnitude)

        emoji_array_positive = ["🙂","🙃","😀","😃","😄","😆","😝","😤","🤩","🥳"]
        emoji_array_negative = ["😐","😕","😟","😓","😔","😖","😫","😢","😭","🤪"]

    

        if score <= 0
            emoji = emoji_array_negative[-1 * score.ceil] # 切り上げ
        else
            emoji = emoji_array_negative[score.floor] # 切り捨て
        end
        # @post.update(:score => emoji)
    end
end
