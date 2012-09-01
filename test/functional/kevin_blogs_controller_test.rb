require 'test_helper'

class KevinBlogsControllerTest < ActionController::TestCase
  setup do
    @kevin_blog = kevin_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kevin_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kevin_blog" do
    assert_difference('KevinBlog.count') do
      post :create, kevin_blog: { body: @kevin_blog.body, category: @kevin_blog.category, created_at: @kevin_blog.created_at, created_by: @kevin_blog.created_by, post: @kevin_blog.post, state: @kevin_blog.state, tag: @kevin_blog.tag, title: @kevin_blog.title, updated_at: @kevin_blog.updated_at, updated_by: @kevin_blog.updated_by }
    end

    assert_redirected_to kevin_blog_path(assigns(:kevin_blog))
  end

  test "should show kevin_blog" do
    get :show, id: @kevin_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kevin_blog
    assert_response :success
  end

  test "should update kevin_blog" do
    put :update, id: @kevin_blog, kevin_blog: { body: @kevin_blog.body, category: @kevin_blog.category, created_at: @kevin_blog.created_at, created_by: @kevin_blog.created_by, post: @kevin_blog.post, state: @kevin_blog.state, tag: @kevin_blog.tag, title: @kevin_blog.title, updated_at: @kevin_blog.updated_at, updated_by: @kevin_blog.updated_by }
    assert_redirected_to kevin_blog_path(assigns(:kevin_blog))
  end

  test "should destroy kevin_blog" do
    assert_difference('KevinBlog.count', -1) do
      delete :destroy, id: @kevin_blog
    end

    assert_redirected_to kevin_blogs_path
  end
end
