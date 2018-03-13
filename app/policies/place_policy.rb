class PlacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
    # - record: the place passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

end
