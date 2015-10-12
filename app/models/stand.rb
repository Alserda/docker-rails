class Stand < ActiveRecord::Base
  belongs_to :organisation
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{address}, #{postalcode}"
  end
end
