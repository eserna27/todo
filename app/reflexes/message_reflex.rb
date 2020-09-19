class MessageReflex < ApplicationReflex
  def completed
    Message.update(message_id, completed_at: Time.current)
  end

  def uncompleted
    Message.update(message_id, completed_at: nil)
  end

  def create
    Message.create(message_params)
  end

  def edit
    @edit_id = message_id
    @message_edit = Message.find(@edit_id)
  end

  def update
    Message.update(message_id, message_params.merge(completed_at: nil))
  end

  def cancelEdit
    @edit_id = nil
  end


  private

  def message_id
    element.dataset[:id]
  end

  def message_params
    params.require(:message).permit(:text)
  end
end
