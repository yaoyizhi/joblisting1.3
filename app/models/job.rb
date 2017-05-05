class Job < ApplicationRecord
    validates :title, presence: true

    scope :recent, -> { order('created_at DESC') }
    scope :published, -> { where(is_hidden: false) }
    def publish!
        self.is_hidden = false
        save
    end

    def hide!
        self.is_hidden = true
        save
    end
    has_many :resumes
    belongs_to :user

    mount_uploader :attachment, AttachmentUploader
end
