class HomeController < ApplicationController
  def index
    if user_signed_in?
      @election = Election.find 1
      @vote = @election.votes.find_by(user_id: current_user.id)
      @vote ||= @election.votes.build
    end
  end
end
