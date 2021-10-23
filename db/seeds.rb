
puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dundler_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mr_meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
flask = Freebie.create(item_name: 'Flask', value: 10, company_id: google.id, dev_id: rick.id)
pen = Freebie.create(item_name: 'Pen', value: 5, company_id: facebook.id, dev_id: morty.id)
gift_card = Freebie.create(item_name: 'Gift Card', value: 20, company_id: dundler_mifflin.id, dev_id: mr_meseeks.id)
cash = Freebie.create(item_name: 'Cash', value: 50, company_id: enron.id, dev_id: gazorpazop.id)
starbucks = Freebie.create(item_name: 'Starbucks', value: 6, company_id: google.id, dev_id: rick.id)
keyboard = Freebie.create(item_name: 'Keyboard', value: 10, company_id: facebook.id, dev_id: morty.id)

puts "Seeding done!"