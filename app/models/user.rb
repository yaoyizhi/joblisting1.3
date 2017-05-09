class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
    def admin?
        is_admin
    end

    def validate?
        is_validate
    end

    has_many :resumes
    has_many :jobs
end
