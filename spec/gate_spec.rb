require './spec/spec_helper'
require './lib/gate'
require './lib/ticket'

RSpec.describe 'ticket gate spec' do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }

  context 'when fare is 150 yen' do
    example 'enter from Umeda to exit Juso' do
      ticket = Ticket.new(150)
      umeda.enter(ticket)

      expect(juso.exit(ticket)).to be_truthy
    end

    example 'enter from Juso to exit Mikuni' do
      ticket = Ticket.new(150)
      juso.enter(ticket)

      expect(mikuni.exit(ticket)).to be_truthy
    end

    example 'enter from Umeda to exit Mikuni' do
      ticket = Ticket.new(150)
      umeda.enter(ticket)

      expect(mikuni.exit(ticket)).to be_falsey
    end
  end

  context 'when fare is 190 yen' do
    example 'enter from Umeda to exit Mikuni' do
      ticket = Ticket.new(190)
      umeda.enter(ticket)

      expect(mikuni.exit(ticket)).to be_truthy
    end
  end
end