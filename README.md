# Unit 20 - "Looks like we've made our First Contract!"

<img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Banner.png"></img>

Assignment Prompt: 

"Your new startup has created its own Ethereum-compatible blockchain to help connect financial institutions, and the team wants to build smart contracts to automate some company finances to make everyone's lives easier, increase transparency, and to make accounting and auditing practically automatic!

This assignment has three levels of difficulty, with each contract increasing in complexity and capability. Although it is highly recommended you complete all three contracts, you are only required to solve one of the three contracts. Recommended to start with Level 1, then move forward as you complete the challenges. You can build all three with the skills you already have!

Level One is an AssociateProfitSplitter contract. This will accept Ether into the contract and divide the Ether evenly among the associate level employees. This will allow the Human Resources department to pay employees quickly and efficiently."

For the sake of time, I chose to only finish the first level of the assignment. The portion of the readme below is a walkthrough of that first level of completion.
<br>
 
## Contract Overview


<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Contract1.PNG"></img></p>
<br>
This is the part of the contract where we set up our payables. The code provided by the instructors already provided the names for these. All I had to do was declare them at the beginning of the contract. In addition, the fields we set up here will pop up on the side of remix where we can then input our recipient addresses. We also have a function that gives us our balance on request.
<br>
<p>


<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Contract3.PNG"></img></p>
<br>
Next, we have our deposit function. The first element is the portion where we declare a variable called 'amount' of type uint, set it equal to the value we will input later below and divided by 3. This part is actually brilliantly simple. Since we have 3 associates, we are dividing a given amount by 3 and giving each of them a slice.
<br>
<p>


<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Contract4.PNG"></img></p>
<br>
Finally, as a fallback we simply call the deposit function. Having a fallback is something that was requested in the instructions.

<br>


## Executing the Contract

<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Compile.PNG"></img></p>
<br>
The first thing you will want to do is compile the contract. If you see a green check mark next to the 'compile' icon, then your contract has been successfully compiled.
<br>
<p>

  
<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Deploy.PNG"></img></p>
<br>
Next, you will deploy your contract. Make sure that your environment is set to 'injected web3' and that your ganache testnet is connected to metamask. I had to do the latter all over again and then re-synch it with metamask. In addition, you must ensure that your funding account is different from the 3 accounts in ganache that you will be disbursing ether to. Finally, please remember to input a number under 'value' (think back to the code). Bear in mind that you cannot transfer more than the balance of your account. Otherwise you will get an error for insufficient funds. I chose a value of 9 because it is divisible into thirds. Finally, input the addresses of the 3 associates' accounts. Again, make sure they are different from the account you sourcing ether from. After that, press the 'transact' button.
<br>
<p>
  

<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/DeployMetamask.PNG"></img></p>
<br>
You should immediately get a pop-up in metamask. As you can see, the amount corresponds to what we input nunder 'value.' Review the transaction and press confirm.
<br>
<p>

  

<p align="center"><img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Deposit.PNG"></img></p>
<br>
The metamask window should then disappear. Next, navigate down to the deposit button, which is the visual representation of the deposit function from the contract. Take note of the balance button as well. Next, press deposit and click confirm when metamask pops up again.
<br>
<p>

  

<img src="https://github.com/ThomasJScott3/Unit-20-First-Contract/blob/main/Images/Ganash.PNG"></img></p>
<br>
Finally, navigate back to ganache and review the balances for the three associate accounts. As you can see above, they should each have equal thirds of whatever value you chose to transfer. In our case, each account started with 100 ETH and now has 103 ETH.


Thus concludes level 1 of the assignment.

### End of Report


