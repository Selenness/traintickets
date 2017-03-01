class TicketsController < ApplicationController

  def new
    @train_id = params[:train_id]
    @first_station_id = params[:first_station_id]
    @end_station_id = params[:end_station_id]
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @ticket = Ticket.new(ticket_params.merge(user_id: @user.id))
      if @ticket.save
        redirect_to ticket_path(id: @ticket.id)
      else
        redirect_to new_ticket_path(train_id: params[:train_id], first_station_id: params[:first_station_id], end_station_id: params[:end_station_id])
      end
    else
      redirect_to new_ticket_path(train_id: params[:train_id], first_station_id: params[:first_station_id], end_station_id: params[:end_station_id])
    end
  end

  private

  def user_params
    params.permit(:name, :passport)
  end

  def ticket_params
    output = params.permit(:train_id, :first_station_id, :end_station_id)
    output[:first_station_id] = output[:first_station_id].to_i
    output[:end_station_id] = output[:end_station_id].to_i
    output
  end
end