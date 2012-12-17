class TournamentsController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]
      before_filter :admin_user, only: :destroy

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
             if @tournament.n_part == 4
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
            end
              if @tournament.n_part == 8
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
            end
            if @tournament.n_part == 16
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
              @match = @tournament.matches.build
              @match.save
            end
            if @tournament.save
			flash[:success] = "Tournament created!"
			redirect_to current_user
		else
			render 'new'
		end

	end
	def destroy
      Tournament.find(params[:id]).destroy
      flash[:success] = "Tournament destroyed."
      redirect_back_or current_user

    end

  private
  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end
