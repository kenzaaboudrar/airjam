class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    @resa = user.past_accepted_reservations.select {|resa| resa if resa.place == record.place }
    @resa.length > 0
  end
end
