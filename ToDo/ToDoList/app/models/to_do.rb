class ToDo < ApplicationRecord
    validates :title, :body, presence: true
    validates :done, inclusion: {in: [true, false]}


end 