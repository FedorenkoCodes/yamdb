require 'test_helper'

class MovieImagesControllerTest < ActionController::TestCase
  setup do
    @movie_image = movie_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_image" do
    assert_difference('MovieImage.count') do
      post :create, movie_image: { image: @movie_image.image, movie_id: @movie_image.movie_id }
    end

    assert_redirected_to movie_image_path(assigns(:movie_image))
  end

  test "should show movie_image" do
    get :show, id: @movie_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_image
    assert_response :success
  end

  test "should update movie_image" do
    patch :update, id: @movie_image, movie_image: { image: @movie_image.image, movie_id: @movie_image.movie_id }
    assert_redirected_to movie_image_path(assigns(:movie_image))
  end

  test "should destroy movie_image" do
    assert_difference('MovieImage.count', -1) do
      delete :destroy, id: @movie_image
    end

    assert_redirected_to movie_images_path
  end
end
