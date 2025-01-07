class BankAccount{
  String accountNumber;
  float balance;
  String owner;
  
  BankAccount(String accountNumber, float balance, String owner){
    this.accountNumber = accountNumber;
    this.balance = balance;
    this.owner = owner;
  }
  
  void deposit(float amount){
    if(amount>0.00){
      balance += amount;
      println("Storting van " + amount + " is gelukt. Huidige saldo: " + balance);
    }else{
      println("Stortingsbedrag moet groter zijn dan €0.00");
    }
  }
  
  void withdraw(float amount){
    if(amount>0){
      if(balance - amount >=0){
        balance -= amount;
        println("opname van " + amount + " is gelutkt. Huidige saldo: " + balance);
      }else{
        println("Onvoldoende saldo voor opname.");
      }
    }else{
      println("Opnamebedrag moet groter dan €0 zijn.");
    }
  }
  
  void showBalance(){
    println("Huidige saldo van " + accountNumber + " is: €" + balance);
  }
}

BankAccount account1;

void setup(){
  account1 = new BankAccount("NL12ABCD345678901234", 1000.00, "Ali");
  account1.showBalance();
  
  account1.deposit(500.00);
  account1.withdraw(200);
  account1.withdraw(2000);
}
