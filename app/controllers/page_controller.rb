class PageController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end
end
