class BankAccount
    attr_reader :balance
     @@minimum_opening_balance = 200
         
    def initialize (opening_balance, account_holder) 
        if opening_balance < @@minimum_opening_balance
            raise ArgumentError
        end
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
    
    def self.minimum_balance(minimum_balance)
        @@minimum_opening_balance = minimum_balance
    end
end

