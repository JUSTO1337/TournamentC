class TournamentsController < ApplicationController
before_filter :signed_in_user, only: [:create, :destroy]
def show
  @tournament = Tournament.find(params[:id])
end
def new
  @tournament = current_user.tournaments.build if signed_in?
end
def index

end
def create
  @tournament = current_user.tournaments.build(params[:tournament])
if @tournament.save
flash[:success] = "Tournament created!"
redirect_to current_user
else
render 'static pages/home'
end

end
def destroy
end
end
