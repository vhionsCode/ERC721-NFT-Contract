// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.20;

// import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
// import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";
// import "@openzeppelin/contracts/security/Pausable.sol";
// import "@openzeppelin/contracts/utils/math/SafeMath.sol";

// contract TestNFTSale is Ownable, Pausable, IERC721Receiver {
//     using SafeMath for uint256;

//     IERC721 public nftContract;
//     uint256 public maxSupply;
//     uint256 public price; // Price in BNB
//     uint256 public totalSold;

//     mapping(uint256 => bool) public isNFTSold;

//     event NFTPurchased(address indexed buyer, uint256 tokenId);

//     constructor(address initialOwner, address _nftContract, uint256 _maxSupply, uint256 _price) Ownable(initialOwner) {
//         nftContract = IERC721(_nftContract);
//         maxSupply = _maxSupply;
//         price = _price;
//     }

//     function setPrice(uint256 _newPrice) external onlyOwner {
//         price = _newPrice;
//     }

//     function purchaseNFT(uint256 _tokenId) external payable whenNotPaused {
//         address owner = nftContract.ownerOf(_tokenId);
//         bool isApproved = nftContract.isApprovedForAll(owner, address(this));
//         require(msg.value >= price, "Incorrect BNB value");
//         require(!isNFTSold[_tokenId], "NFT already sold");
//         require(isApproved, "NFT not approved to sale contract");
//         require(totalSold < maxSupply, "Maximum limit reached");

//         isNFTSold[_tokenId] = true;
//         totalSold = totalSold.add(1);
//         nftContract.safeTransferFrom(owner, msg.sender, _tokenId);

//         emit NFTPurchased(msg.sender, _tokenId);
//     }

//     function pause() external onlyOwner {
//         _pause();
//     }

//     function unpause() external onlyOwner {
//         _unpause();
//     }

    

//     function onERC721Received(address, address, uint256, bytes memory) external virtual override returns (bytes4) {
//         return this.onERC721Received.selector;
//     }

//     function withdrawFunds() external onlyOwner {
//         uint256 balance = address(this).balance;
//         payable(owner()).transfer(balance);
//     }

//     receive() external payable {
        
//     }
// }
