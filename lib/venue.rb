class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
  validates(:venue_name, {:presence => true})
  before_save(:title_case_venue_name)

  default_scope {order("venue_name")}

  private

  define_method(:title_case_venue_name) do
    self.venue_name = self.venue_name().titlecase()
  end
end
