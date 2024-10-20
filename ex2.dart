class BankAccount {
  final int accountId;
  final String accountOwner;
  double balance = 0.0;

  BankAccount(this.accountId, this.accountOwner);

  void withdraw(double amount) {
    if (balance < amount) {
      throw Exception("Insufficient funds.");
    }
    balance -= amount;
  }

  void credit(double amount) {
    balance += amount;
  }
}
class Bank {
  final List<BankAccount> accounts = [];

  BankAccount createAccount(int accountId, String accountOwner) {
    if (accounts.any((account) => account.accountId == accountId)) {
      throw Exception("Account ID must be unique.");
    }
    final account = BankAccount(accountId, accountOwner);
    accounts.add(account);
    return account;
  }
}