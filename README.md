# Unit 20 - "Looks like we've made our First Contract!""Looks like we've made our First Contract!"

<img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Banner.png"></img>

Assignment Prompt: 

"Your new startup has created its own Ethereum-compatible blockchain to help connect financial institutions, and the team wants to build smart contracts to automate some company finances to make everyone's lives easier, increase transparency, and to make accounting and auditing practically automatic!

This assignment has three levels of difficulty, with each contract increasing in complexity and capability. Although it is highly recommended you complete all three contracts, you are only required to solve one of the three contracts. Recommended to start with Level 1, then move forward as you complete the challenges. You can build all three with the skills you already have!

Level One is an AssociateProfitSplitter contract. This will accept Ether into the contract and divide the Ether evenly among the associate level employees. This will allow the Human Resources department to pay employees quickly and efficiently."

For the sake of time, I chose to only finish the first level of the assignment. The portion of the readme below is a walkthrough of that first level of completion.

### Contract overview


<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Contract1.PNG"></img></p>
<br>
This is the part of the contract where we set up our payables. The code provided by the instructors already provided the names for these. All I had to do was declare them at the beginning of the contract. In addition, the fields we set up here will pop up on the side of remix where we can then input our recipient addresses. We also have a function that gives us our balance on request.
<br>
<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Contract3.PNG"></img></p>
<br>
Next, we have our deposit function. The first element is the portion where we declare a variable called about of type uint, set it equal to the value we will input later below and then divide it by 3. This part is actually brilliantly simple. Since we have 3 employees, we are dividing a given amount by 3 and giving each of employees a slice.
<br>
<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Contract4.PNG"></img></p>
<br>
Finally, as a fallback we simply call the deposit function. Having a fallback is something that was requested in the instructions.

### Executing the contract

<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Compile.PNG"></img></p>
<br>
The first thing you will want to do is compile the contract. If you see a green check mark next to the 'compile' icon, then your contract has been successfully compiled.
<br>
<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Deploy.PNG"></img></p>
<br>
Next, you will deploy your contract. Make sure that your environment is set to 'injected web3' and that your ganash testnet is set up in ganache. I had to do the latter all over again and then synch it with metamask. In addition, make sure that you specify that your funding account is different from the 3 accounts in ganache you will be disbursing ether to. Finally, please remember to input a number under 'value' (think back to that part from the code). Bear in mind that you cannot transfer more than the balance of your account. Otherwise you will get an error. I chose a value of 9 because it is divisible into thirds. Finally, input the addresses of the 3 associate's accounts. Again, make sure they are different from the account you sourcing ether from. After that, press the 'transact' button.
<br>
<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/DeployMetamask.PNG"></img></p>
<br>
You should immediately get a pop-up in metamask. As you can see, the amount corresponds to what we input nunder 'value.' Review the transaction and press confirm.
<br>
<img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Deposit.PNG"></img></p>
<br>
The metamask window should then disappear. Next, navigate down to the deposit button which is the visual representation of the deposit function from the contract. Take note of the balance button as well. Next, press deposit and click confirm when metamask pops up again.
<br>
<img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Ganash.PNG"></img></p>
<br>
Finally, navigate back to ganache and review the balances for the three associate accounts. They should each have equal thirds of whatever value you chose to transfer.


Thus concludes level 1 of the assignment

#### End of Report


