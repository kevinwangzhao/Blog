class KevinBlogsController < ApplicationController

  layout "front_page"

  # GET /kevin_blogs
  # GET /kevin_blogs.json
  def index
    @kevin_blogs = KevinBlog.all
    @categories = Admin::Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kevin_blogs }
    end
  end
  
  def list
    @kevin_blogs = KevinBlog.category(params[:id])
    @categories = Admin::Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kevin_blogs }
    end
  end

  # GET /kevin_blogs/1
  # GET /kevin_blogs/1.json
  def show
    @kevin_blog = KevinBlog.find(params[:id])
    @comment = @kevin_blog.comments
    @categories = Admin::Category.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kevin_blog }
    end
  end

  # GET /kevin_blogs/new
  # GET /kevin_blogs/new.json
  def new
    @kevin_blog = KevinBlog.new
    @categories = Admin::Category.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kevin_blog }
    end
  end

  # GET /kevin_blogs/1/edit
  def edit
    @kevin_blog = KevinBlog.find(params[:id])
    @categories = Admin::Category.all
  end

  # POST /kevin_blogs
  # POST /kevin_blogs.json
  def create
    @kevin_blog = KevinBlog.new(params[:kevin_blog])
    @kevin_blog.user_id = session[:user_id]
    respond_to do |format|
      if @kevin_blog.save
        format.html { redirect_to @kevin_blog, notice: 'Kevin blog was successfully created.' }
        format.json { render json: @kevin_blog, status: :created, location: @kevin_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @kevin_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kevin_blogs/1
  # PUT /kevin_blogs/1.json
  def update
    @kevin_blog = KevinBlog.find(params[:id])

    respond_to do |format|
      if @kevin_blog.update_attributes(params[:kevin_blog])
        format.html { redirect_to @kevin_blog, notice: 'Kevin blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kevin_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kevin_blogs/1
  # DELETE /kevin_blogs/1.json
  def destroy
    @kevin_blog = KevinBlog.find(params[:id])
    @kevin_blog.destroy

    respond_to do |format|
      format.html { redirect_to kevin_blogs_url }
      format.json { head :no_content }
    end
  end
  
  def comment
    KevinBlog.find(params[:id]).comments.create(params[:comment])
    flash[:notice] = "OK! You do it."
    redirect_to :action => "show", :id => params[:id]
  end

end
