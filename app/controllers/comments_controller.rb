class CommentsController < ApplicationController 

    def create
       comment = Comment.new(
           comment: params[:comment],
           username: params[:username],
           user_id: params[:user_id],
           song_id: params[:song_id] ,
       )
       if comment.save
        render json: {res: 'comment added'}, status: :ok
       else
        render json: {errors: comment.errors}, status: :unprocessable_entity 
       end
    end

    def show
        comments = Comment.where(song_id: params[:song_id]).order(created_at: :desc)
        render json: comments
    end

    def update
        comment = Comment.find_by(id: params[:comment_id])
        if comment
            comment.update(comment: params[:comment])
            render json: comment
        end
    end

    def delete
        comment = Comment.find_by(id: params[:comment_id])
        if comment
            comment.destroy()
            render json: {res: 'comment deleted'}, status: :ok
        else 
        end
    end

end