class DogPolicy < ApplicationPolicy

  def edit?
    user.id == record.user_id
  end
  
  def update?
   edit?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
