//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Candidate {

	struct CandidateDetails {
        bytes32 name;
        address addr;
        bytes32 nic;
        bool doesExist;
        bool accepted;
    }

    uint private numCandidates;
    // replacing with counter openzeppelin

    mapping(uint => CandidateDetails) candidates;

    function addCandidate(bytes32 name, bytes32 nic, bytes32 party) public {
        // require checking is candidate existing in this event
        // Create new Candidate Struct with name and saves it to storage.
        numCandidates++;
        candidates[numCandidates] = CandidateDetails(name,msg.sender,nic,party,true,false);
    }

    function getNumOfCandidates() public view returns(uint) {
        return numCandidates;
    }

    function getCandidate(uint candidateId) public view returns (bytes32,bytes32, bytes32) {
        CandidateDetails memory temp = candidates[candidateId];
        return (temp.name,temp.nic,temp.party);
    }
}
