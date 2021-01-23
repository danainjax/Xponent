class Task < ApplicationRecord
    has_many :assignments
    has_many :users, :through => :assignments
    has_many :comments, :through => :users

    validates :title, :description, presence: true
    

    scope :alpha, -> { order(:title) } #call this method in the controller
    scope :most_comments, -> {joins(:comments).group('tasks.id').order('count(tasks.id) desc') }

end
