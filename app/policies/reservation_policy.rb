class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    true
  end

  def accept?
    record.place.user == user
  end

  def decline?
    record.place.user == user
  end

  def notify?
    true
  end

end
