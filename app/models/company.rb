class Company < ActiveRecord::Base
  has_many :freebies

  def give_freebie(dev:, item_name:, value:)
    Freebie.create(item_name: item_name, value: value, dev_id: dev.id, company_id: self.id)
  end

  def self.oldest_company
    oldest_year = self.minimum(:founding_year)
    self.find_by(founding_year: oldest_year)
  end
end

# create_table :freebies do |t|
#   t.integer :company_id
#   t.integer :dev_id
#   t.string :item_name
  #t.integer :value 