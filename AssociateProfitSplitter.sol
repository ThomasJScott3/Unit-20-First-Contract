pragma solidity ^0.5.0;

// Unit 20: First Contract 
// Thomas Scott
// Submitted Late (9/25/2021)

// lvl 1: equal split
contract AssociateProfitSplitter {
  // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.

    // If you forget this part the code will not compile
    // Each payable address needs to correspond to one of the employee names below
    // In fact, you are actually declaring them below
    address payable employee_one;
    address payable employee_two;
    address payable employee_three;
    

    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        
        // Assign a uint the value of one third of the total value of amount
        uint amount = msg.value/3; // Your code here!
        // @TODO: Transfer the amount to each employee
        
        // Each employee gets a share of 'amount' 
        employee_one.transfer(amount);

        // Bear in mind that there can only be 3 employees for this to work 
        employee_two.transfer(amount);

        // This is due to both the number of employees in the constructor as well as the math for 'amount' itself
        employee_three.transfer(amount);
        
        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        msg.sender.transfer(msg.value-amount*3);
    }

    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
       
       // Simply call the deposit function
       deposit();
    }
}
