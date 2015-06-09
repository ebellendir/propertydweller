class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new
    @blog.property_id = params[:property_id]
    @blog.blog_title = params[:blog_title]
    @blog.blog_content = params[:blog_content]

    if @blog.save
      redirect_to "/blogs", :notice => "Blog created successfully."
    else
      render 'new'
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])

    @blog.property_id = params[:property_id]
    @blog.blog_title = params[:blog_title]
    @blog.blog_content = params[:blog_content]

    if @blog.save
      redirect_to "/blogs", :notice => "Blog updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])

    @blog.destroy

    redirect_to "/blogs", :notice => "Blog deleted."
  end
end
