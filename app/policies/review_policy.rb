class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    user.reservations.find_by(place_id: record.place.id)
  end
end
