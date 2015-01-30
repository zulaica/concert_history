class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  validates(:band_name, {:presence => true})
  before_save(:title_case_band_name)

  default_scope {order("band_name")}

private

  define_method(:title_case_band_name) do
    self.band_name = self.band_name().titlecase()
  end
end
