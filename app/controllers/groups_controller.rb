class GroupsController < ApplicationController

  def index
    @book = Book.new
    @groups = Group.all
  end

end
