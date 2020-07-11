class CharacterPolicy < ApplicationPolicy
  #class Scope < Scope
  def resolve
    scope.all
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def new?
    true
  end

  def show?
    true
  end

end
