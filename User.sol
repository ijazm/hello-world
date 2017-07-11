
contract User  {
  // NOTE: members must be public to be indexed for search
  address public account = 0x1234;
  string public username;
  bytes32 public pwHash;
  uint public id;
  string public role;

  function User(address _account, string _username, bytes32 _pwHash, uint _id, string _role) {
    account = _account;
    username = _username;
    pwHash = _pwHash;
    id = _id;
    role = _role;
    
  }

  function authenticate(bytes32 _pwHash) returns (bool) {
    return pwHash == _pwHash;
  }
}
