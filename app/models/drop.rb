class Drop < ActiveRecord::Base
  include AASM
  belongs_to :product

  aasm do
    state :running, :initial => true
    state :ended
    state :done

    event :end do
      transitions :from => :running, :to => :ended
    end

    event :done do
      transitions :from => :ended, :to => :done
    end
  end
end
