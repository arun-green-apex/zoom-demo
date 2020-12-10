class InvitesController < ApplicationController
  
  

  # GET /invites/new
  def new
    # byebug
    @invite = Invite.new
    @invite.room_id = params[:room_id]
  end


  # POST /invites
  # POST /invites.json
  def create
    
    room = Room.find(invite_params[:room_id])
    create_by = room.user
    

    @invite = Invite.new(invite_params)

    respond_to do |format|
      if @invite.save
        InviteMailer.new_invite_email(@invite).deliver
        format.html { redirect_to rooms_path, notice: 'Invite was successfully sent.' }
      end
    end

      
  end


  private
    # Only allow a list of trusted parameters through.
    def invite_params
      params.require(:invite).permit(:email, :room_id)
    end
end
