class MonthsController < ApplicationController
  def index
    @months = Month.all
  end

  def show
    @month = Month.find(params[:id])
    @nomination = Nomination.all
  end

  def new
    @month = Month.new
  end

  def create
    @month = Month.new
    @month.started_on = params[:started_on]
    @month.user_id = params[:user_id]
    @month.book_id = params[:book_id]

    if @month.save
      redirect_to :back, :notice => "Month created successfully."
    else
      render 'new'
    end
  end

  def edit
    @month = Month.find(params[:id])
  end

  def update
    @month = Month.find(params[:id])

    @month.started_on = params[:started_on]
    @month.user_id = params[:user_id]
    @month.book_id = params[:book_id]

    if @month.save
      redirect_to :back, :notice => "Month updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @month = Month.find(params[:id])

    @month.destroy

    redirect_to :back, :notice => "Month deleted."
  end
  
   
end
