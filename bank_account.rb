class BankAccount
    attr_reader :balance
    
    def initialize (opening_balance, account_holder)
        @balance = opening_balance
    end
    
    def deposit (deposit_amt)
#         @balance = @balance + deposit_amt
        @balance += deposit_amt         
    end

    def withdrawal (withdrawal_amt)
#         @balance = @balance - withdrawal_amt
        @balance -= withdrawal_amt
    end
    
    def transfer (transfer_amt, account_two)
        withdrawal(transfer_amt)
        account_two.deposit(transfer_amt)
    end
    
end

