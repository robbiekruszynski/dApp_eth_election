pragma solidity ^0.5.0;


contract Election {

  //model a Candidate
  struct Candidate {
    uint id;
    string name;
    uint VoteCount;
  }

  //store candidates
  //fetch candidate
  mapping(uint => Candidate) public candidates;

  //store candidates
  //allows you to determine how many candidates there are and fetch them if needed
  uint public candidatesCount;


    // Constructor
    constructor () public {
      addCandidate("Candidate 1");
      addCandidate("Candidate 2");
    }

    function addCandidate (string memory _name) private {
      candidatesCount ++;
      candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}