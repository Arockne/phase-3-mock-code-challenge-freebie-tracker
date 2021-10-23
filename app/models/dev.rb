class Dev < ActiveRecord::Base
  has_many :freebies

  def received_one?(item_name:)
    self.freebies.where(item_name: item_name).any?
  end

  def give_away(dev:, freebie:)
    if received_one?(item_name: freebie.item_name)
      freebie.update(dev_id: dev.id)
    end
  end
end
