class Raman < ApplicationRecord

  def self.search(term)

    if term
      where('ramen.Variety LIKE ?', "%#{term}%")
    else
      all
    end
  end

end
