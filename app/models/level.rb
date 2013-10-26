class Level < ActiveRecord::Base
	has_many :exercises, dependent: :destroy
	validates :title, presence: true,
                    length: { minimum: 5 }
    validates :description, presence: true,
                    length: { minimum: 5 }
end
