class HelloWorldController < ApplicationController
  def home
    render json: { status: "The API to the To-Do list App"}
  end
end
