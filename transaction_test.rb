require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < MiniTest::Test

  def capture_stdout(&block)
    original_stdout = $stdout
    $stdout = fake = StringIO.new
    begin
      yield
    ensure
      $stdout = original_stdout
    end
    fake.string
  end

  def test_prompt_for_payment
    transaction = Transaction.new(20)

    input = StringIO.new("20\n")
    capture_stdout {transaction.prompt_for_payment(input:input)}

    assert_equal 20, transaction.amount_paid 
  end
end