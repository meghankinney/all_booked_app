class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find(params[:id])
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new
    @vote.nomination_id = params[:nomination_id]
    @vote.user_id = params[:user_id]

    if @vote.save
      redirect_to :back, :notice => "Vote created successfully."
    else
      render 'new'
    end
  end

  def edit
    @vote = Vote.find(params[:id])
  end

  def update
    @vote = Vote.find(params[:id])

    @vote.nomination_id = params[:nomination_id]
    @vote.user_id = params[:user_id]

    if @vote.save
      redirect_to :back, :notice => "Vote updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @vote = Vote.find(params[:id])

    @vote.destroy

    redirect_to :back, :notice => "Vote deleted."
  end
end
