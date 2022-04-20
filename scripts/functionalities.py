from brownie import DappInsurance
from scripts.helpful_scripts import get_account

def fund(amount, account_address):
    c = DappInsurance[-1]
    tx = c.fund(amount, {'from': account_address, 'value': amount})
    tx.wait(1)
    return tx

def withdraw(amount, account_address):
    mainAccount = get_account()
    c = DappInsurance[-1]
    tx = c.withdraw(account_address, amount, {'from': mainAccount})
    tx.wait(1)
    return tx

def getFunds():
    c = DappInsurance[-1]
    return c.getFunds()
