pragma solidity ^0.4.24;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SupplyChain.sol";

contract TestSupplyChain {
    //define a contract-wide variable containing the smart contract to be tested, 
    //calling the DeployedAddresses smart contract to get its address.
    SupplyChain sc = SupplyChain(DeployedAddresses.SupplyChain());
    uint sku = 0; //sku of first item will be = 0
    

    // Test for failing conditions in this contracts

    // test that every modifier is working

    function testAddItem() public {
        string memory name = "surfboard";
        uint price = 500;
        Assert.equal(0, sc.getSkuCount(), "skuCount should be 0");
        sku = sc.addItem(name, price);
        Assert.equal(0, sku, "sku of first item should be 0");
        Assert.equal(1, sc.getSkuCount(), "skuCount should be 1");
//        Assert.equal(sc.items[sku].price, price, "price should have been set correctly");
//        Assert.equal(sc.items[sku].name,  name,  "name should have been set correctly" );
    }
/*
    function testBuyItem() public {
        uint sku = sc.buyItem(0);  //sku of first item = 0
        Assert.equal(1, sc.skuCount, "skuCount should be 1");
    }
*/
    // buyItem

    // shipItem

    // test for calls that are made by not the seller
    // test for trying to ship an item that is not marked Sold

    // receiveItem

    // test calling the function from an address that is not the buyer
    // test calling the function on an item not marked Shipped

}
