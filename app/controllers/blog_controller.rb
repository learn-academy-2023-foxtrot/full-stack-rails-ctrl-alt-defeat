class BlogController < ApplicationController
    def index 
        @blogs = Blog.all 
    end 
    
    def show 
        @blog = Blog.find(params[:id])
    end
    
    def new 
        @blog = Blog.new
    end 
    
    def edit
        @blog = Blog.find(params[:id])
    end

    def update
        @blog = Blog.find(params[:id])
        @blog.update(blog_params)
    end
    def create 
        @blog = Blog.create(blog_params)
    end 


    def destroy 
        @blog = Blog.find(params[:id])
        @blog.destroy
    end
    
    private 
    def blog_params 
        params.require(:blog).permit(:title, :content)
    end 

end
