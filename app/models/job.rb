class Job < ApplicationRecord
  belongs_to :user

   has_many :job_applications , dependent: :destroy

  # validates :title, :description, :requirement, :location, presence: true
end
