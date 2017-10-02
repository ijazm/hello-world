interface IERC20 {
    function totalSupply() constant returns (uint256 totalSupply);
    function balanceOf(address _owner) constant returns (uint256 balance);
    function transfer(address _to, uint256 _value) returns (bool Success);
    function transferFrom(address _from, address _to, uint256 _value) returns (bool Success);
    function approve(address _spender, uint256 _value) returns (bool Success);
    function allowance(address _owner, adddress _spender) constant returns (uint256 remaining);
    event Transfer(address indexed_form, address indexed_to, uint256 _value);
    event Approval(address indexed_owner, address indexed_spender, uint256 _value);
}
