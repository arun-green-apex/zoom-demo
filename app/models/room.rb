class Room < ApplicationRecord
	before_create do 
		opentok = OpenTok::OpenTok.new '47035604', 'c74492fb0e84cdedd3a19077e995c072d079049c'
		session = opentok.create_session
		self.vonage_session_id = session.session_id
	end

	belongs_to :user
	has_many :invites
end
