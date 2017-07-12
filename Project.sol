pragma solidity ^0.4.0;


contract Project  {
  // NOTE: members must be public to be indexed for search
  enum ErrorCodes { NULL, SUCCESS, ERROR, NOT_FOUND, EXISTS, RECURSIVE, INSUFFICIENT_BALANCE }
  ErrorCodes public errorCodes;
  enum ProjectState { NULL, OPEN, PRODUCTION, INTRANSIT, RECEIVED }
  ProjectState public state;
  
  string public name;
  string public buyer;
  string public description;
  uint public price;

  function Project( string _name, string _buyer, string _description, uint _price,) {
    name = _name;
    buyer = _buyer;
    description = _description;
    price = _price;
    state = ProjectState.OPEN;
  }

  function getState() returns (ProjectState) {
    return state;
  }

  function setState(ProjectState _state) {
    state = _state;
  }
}

