class Admin::TicketsController < Admin::BaseController
  def index
    @tickets = Ticket.all
    render 'application/tickets/index'
  end

  def show
    @ticket = Ticket.find(params[:id])
    render 'application/tickets/show'
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to tickets_path
  end
end