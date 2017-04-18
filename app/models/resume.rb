class Resume < ApplicationRecord
    belongs_to :user
    belongs_to :job
    scope :recent, -> { order('created_at DESC') }
    validates :content, presence: true
    mount_uploader :attachment, AttachmentUploader
end
