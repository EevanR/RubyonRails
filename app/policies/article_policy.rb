class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    @user
  end

  def edit?
    @record.author == @user
  end

  def show?
  end
end