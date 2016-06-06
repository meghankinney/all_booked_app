class NominationsController < ApplicationController
  def index
    @nominations = Nomination.all
  end

  def show
    @nomination = Nomination.find(params[:id])
  end

  def new
    @nomination = Nomination.new
  end

  def create
    @nomination = Nomination.new
    @nomination.book_id = params[:book_id]
    @nomination.month_id = params[:month_id]

    if @nomination.save
      redirect_to :back, :notice => "Nomination created successfully."
    else
      render 'new'
    end
  end

  def edit
    @nomination = Nomination.find(params[:id])
  end

  def update
    @nomination = Nomination.find(params[:id])

    @nomination.book_id = params[:book_id]
    @nomination.month_id = params[:month_id]

    if @nomination.save
      redirect_to :back, :notice => "Nomination updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @nomination = Nomination.find(params[:id])

    @nomination.destroy

    redirect_to "/nominations", :notice => "Nomination deleted."
  end
end
