require "spec_helper"
require "BankAccount"

describe BankAccount do
  describe "#check_balance" do
    it "check the deposit" do
   	  account1=BankAccount.new(10000)
      balance=account1.deposit(40000)
      expect(balance).to eq(50000)
    end
    it "check the withdraw" do
   	  account1=BankAccount.new(5000)
      balance=account1.withdraw(1000)
      expect(balance).to eq(4000)
    end
     it "check the transaction" do
   	  account1=BankAccount.new(5000)
      account1.withdraw(300)
      account1.deposit(60000)
      account1.deposit(60000)
      account1.withdraw(50000)
      
      count=account1.numberOfTransactions()
      expect(count).to eq(4)
    end
    it "check changed name" do
    	 account1=BankAccount.new(5000)
    	 new_name = account1.changeName("Rick")
    	 expect(new_name).to eq("Brick")
    end
end
end
