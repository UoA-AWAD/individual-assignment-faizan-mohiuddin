require 'csv'

namespace :products do
  desc "pull product data into db"
  task seed_products: :environment do

    Raman.destroy_all

    CSV.foreach("lib/assets/OutputDataSet.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Raman.create!(
      Brand: row[0],
      Variety: row[1],
      Style: row[2],
      Country: row[3],
      Stars: row[4].to_d
      )
      end
  end

end
