class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      redirect_to :back
    end
  end

  def show
    @message = Message.find(params[:id])
  end

private

  def message_params
    params.require(:message).permit(:to, :from, :body)
  end
end