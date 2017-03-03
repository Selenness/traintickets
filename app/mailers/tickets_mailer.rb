class TicketsMailer < ApplicationMailer
  def buy_ticket(user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user, subject: 'Вы купили билет.')
  end

  def delete_ticket(user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user, subject: 'Вы удалили купленный билет')
  end
end
