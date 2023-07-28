// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract message_poster{
/* Admins can change the value of text and add new admins
   The owner is an admin by default as defined by the constructor*/
    address public immutable owner;
    address[] internal admins;
    string internal text;

    constructor(){
        owner = msg.sender;
        admins.push(owner);
        text = "Hello World";
    }

// adminIterator goes through the whole admins array to see if the input address is an admin
    function adminIterator(address query) internal view returns (bool){
        uint len = admins.length - 1;
       
        for (uint i=0; i <= len; i++){
            if (admins[i] == query){
                return true;
            }
        }
       
        return false;
    }

// The following modifier(s) require the caller to be either an owner or an admin:
    modifier isOwner(){
        require(msg.sender == owner, "Function caller does not meet the privilege requirements to call this function.");
        _;    
    }

    modifier isAdmin(){
        require(adminIterator(msg.sender), "Function caller does not meet the privilege requirements to call this function.");
        _;    
    }

// This modifier checks whether the input address is an admin it's used in the function "newAdmin" to prevent adding repeated addresses to the admins array
    modifier isNew(address _isNew){
        require(adminIterator(_isNew) != true, "The provided address is already an admin");
        _;    
    }

// The following function declares a new admin:
    function newAdmin(address _newAdmin) public isAdmin isNew(_newAdmin){
        admins.push(_newAdmin);
    }

// The following functions are used to change/view the text variable as well as to view the admin addresses:
    function setText(string calldata newText) public isAdmin{
        text = newText;
    }

    function seeText() public view returns(string memory){
        return text;
    }

    function seeAdmins() public view returns(address[] memory){
        return admins;
    }
}