from brownie import DappInsurance
from scripts.helpful_scripts import get_account

def deploy():
    account = get_account()
    dp = DappInsurance.deploy({'from': account})

def main():
    deploy() 