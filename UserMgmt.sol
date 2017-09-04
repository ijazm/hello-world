pragma solidity ^0.4.11;
contract UserMgmt {

  struct UserStruct {
      uint role;
      uint index;
  }

  enum UserRole { SUBMIT }
  UserRole public userRole;

  mapping(address => UserStruct) private userStructs;
  address[] private userIndex;

  function checkUser(address userAddress) public  constant returns(bool isIndeed) {
      if(userIndex.length == 0) return false;
      return (userIndex[userStructs[userAddress].index] == userAddress);
  }

  function insertUser(address userAddress ) public returns(bool) {
      if(userIndex.length == 0) {
          userStructs[userAddress].index = userIndex.push(userAddress)-1;
          userStructs[userAddress].role = uint256(UserRole.SUBMIT);
          return true;
      }
      else {
          if (userIndex[userStructs[userAddress].index] == userAddress) {
              return true;
          }
          else {
              userStructs[userAddress].index = userIndex.push(userAddress)-1;
              userStructs[userAddress].role = uint256(UserRole.SUBMIT);
              return true;
          }
      }
  }

  function getUser(address userAddress) public constant returns( uint index) {
    if(!checkUser(userAddress)) throw;
    return(userStructs[userAddress].index);
  }
  function getUserCount() public constant returns(uint count) {
      return userIndex.length;
  }

  function getUserAtIndex(uint index) public constant returns(address userAddress) {
      return userIndex[index];
  }

  function remove(address owner) {
      selfdestruct(owner); // Makes contract inactive, returns funds
   }
}
