class Case < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :task
    validates :support
    validates :charactristic
  end

end
