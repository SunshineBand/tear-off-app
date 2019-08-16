class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @comment_flyer_id = @comment.flyer_id
        @flyer = Flyer.find_by(id: @comment_flyer_id)
        

        respond_to do |format|
            if @comment.save
                format.html { redirect_to "/flyers/#{@flyer.id}", notice: 'Comment was successfully created.' }
                format.json { render :show, status: :created, location: @flyer }
            else
                format.html { render :new }
                format.json { render json: @comment.errors, status: :unprocessable_entity }
            end
        end
    end

    private 
    def comment_params
        params.require(:comment).permit(:post, :flyer_id, :user_id)
    end
end
