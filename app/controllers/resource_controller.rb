class ResourceController < ApplicationController
  def show
    sleep 16.seconds
    render js: "alert('hello');"
  end
end
