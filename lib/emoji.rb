def add_emoji(score,magnitude)

    emoji_array_positive = ["🙂","🙃","😀","😃","😄","😆","😝","😤","🤩","🥳"]
    emoji_array_negative = ["😐","😕","😟","😓","😔","😖","😫","😢","😭","🤪"]

    select = sentiment.score*10

    if select <= 0
        @emoji = emoji_array_negative[-1*select.ceil] # 切り上げ
    else
        @emoji = emoji_array_negative[select.floor] # 切り捨て
    end
    @post.update(:score => emoji)
end
