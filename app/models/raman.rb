class Raman < ApplicationRecord

  def self.search(term)

    if term
      where('Variety LIKE ?', "%#{term}%")
    else
      all
    end
  end

end
