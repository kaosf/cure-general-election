class VotesController < ApplicationController
  before_action :set_election
  before_action :authenticate_user!

  def create
    @vote = @election.votes.build vote_params
    @vote.user = current_user
    @vote.save
    redirect_to root_url
  end

  def update
    @vote = @election.votes.find_by(user_id: current_user.id)
    @vote.update vote_params
    redirect_to root_url
  end

  private
    def set_election
      @election = Election.find(params[:election_id])
    end

    def vote_params
      params.require(:vote).permit(:election_id, :body)
    end
end
