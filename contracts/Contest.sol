pragma solidity ^0.5.0;

//Creates the Contract
contract Contest {

	//creating structure to model the contestant
	struct Contestant {
		uint id;
		string name;
		uint voteCount;
	}

	//use mapping to get or fetch the contestant details
	mapping(uint => contestant) public contestants;

	//add a public state variable to keep track of constestant count
	uint public contestantCount;

	//Adds a constestant
	function addContestant (string _name) private {
		contestantCount++
		contestants[contestantCount] = Contestant(contestantCount, _name, 0);
	}
}