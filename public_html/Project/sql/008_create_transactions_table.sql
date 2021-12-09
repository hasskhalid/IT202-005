CREATE TABLE IF NOT EXISTS Transactions(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `AccountSrc` INT NOT NULL,
    `AccountDest` INT NOT NULL,
    `BalanceChange` DECIMAL(12,2) DEFAULT 0,
    `TransactionType` VARCHAR(100) NOT NULL,
    `Memo` VARCHAR(100) NOT NULL,
    `Created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `ExpectedTotal` DECIMAL(12,2) DEFAULT 0,
    FOREIGN KEY (AccountSrc) REFERENCES Accounts(id),
    FOREIGN KEY (AccountDest) REFERENCES Accounts(id)
)