class PostsController < ApplicationController


def new
    @post = Post.new
    @bloggers = Blogger.all
    @destinations = Destination.all
end



def create

    @bloggers = Blogger.all
    @destinations = Destination.all
    @post = Post.create(post_params)
 
    if @post.valid?
     redirect_to post_path(@post)
    else
     render :new
    end
 end
 
def like
    @post = Post.find(params[:id])
    @post.likes+=1
    @post.save
    redirect_to post_path(@post)
    end

    def destroy
    @post = Post.find(params[:id])
@post.destroy
    end

def show
    @post = Post.find(params[:id])
end
def post_params 
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
end
end
