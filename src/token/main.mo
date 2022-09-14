import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";

actor Token {

  var owner : Principal = Principal.fromText("llrua-awm6k-4u22a-3hrdu-3xooe-n53w3-rygyv-iclxr-ddyhr-7ae2m-qae");
  var totalSupply : Nat = 1000000000;
  var symbol : Text = "DSQD";

  var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);

  balances.put(owner, totalSupply);

  public query func balanceOf(who : Principal) : async Nat {

    let balance : Nat = switch (balances.get(who)) {
      case null 0;
      case (?result) result;
    };
    return balance;
  };

  public query func getSymbol() : async Text {
    return symbol;
  };
}