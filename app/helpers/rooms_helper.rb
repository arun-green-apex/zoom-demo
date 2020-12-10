module RoomsHelper
	def self_meeting_room? room
		room.user == current_user
	end
end
