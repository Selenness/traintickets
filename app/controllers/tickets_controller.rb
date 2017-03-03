class TicketsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tickets = current_user.tickets
    render 'application/tickets/index'
  end

  def new
    @train_id = params[:train_id]
    @first_station_id = params[:first_station_id]
    @end_station_id = params[:end_station_id]
  end

  def show
    @ticket = Ticket.find(params[:id])
    render 'application/tickets/show'
  end

  def create
    @ticket = Ticket.new(ticket_params.merge(user_id: current_user.id))
    if @ticket.save
      redirect_to ticket_path(id: @ticket.id)
    else
      redirect_to new_ticket_path(train_id: params[:train_id], first_station_id: params[:first_station_id], end_station_id: params[:end_station_id])
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to tickets_path
  end


  private

  def ticket_params
    params.permit(:user_name, :user_passport, :train_id, :first_station_id, :end_station_id)
  end

end