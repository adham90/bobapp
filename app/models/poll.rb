class Poll < ActiveRecord::Base
  include AASM
  belongs_to :product

  validates_presence_of :product

  aasm do
    state :running, :initial => true
    state :closed

    event :run do
      transitions :from => :closed, :to => :running
    end

    event :close do
      transitions :from => :running, :to => :closed
    end
  end

end
