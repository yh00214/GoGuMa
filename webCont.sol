pragma solidity ^0.4.25;

contract webCont {
    string public contFrom;
    string public contTo;
    uint128 public price;
    uint[] public date = [0,0,0];
    string public contAddress;
    string public contThing;
    
    function webCont(string _contfrom,string _contto,uint128 _price,uint128 _year, uint128 _month, uint128 _day,string _contAddress,string _contThing){
        contFrom = _contfrom;
        contTo = _contto;
        price = _price;
        date[0] = _year;
        date[1] = _month;
        date[2] = _day;
        contAddress = _contAddress;
        contThing = _contThing;
    }
    
    function setFrom(string _contfrom) {
        contFrom = _contfrom;
        
    }
    
    function setTo(string _contto) {
       contTo = _contto;
    }
    
    function setprice(uint128 _price){
        price = _price;
    }
    
    function setDate(uint128 _year, uint128 _month, uint128 _day){
        date[0] = _year;
        date[1] = _month;
        date[2] = _day;
    }
    
    function  setAddress(string _contAddress){
        contAddress = _contAddress;
    }
    
    function setThing(string _contThing){
        contThing = _contThing;
    }
    
    function getcontFrom() constant returns (string) {
       return contFrom;
    }
    
    function getcontTo() constant returns (string){
        return contTo;
    }
    
    function getPrice() constant returns (uint128){
        return price;
    }
    
    function getDate() constant returns (uint[]){
        return date;
    }
    
    function getAddress() constant returns(string){
        return contAddress;
    }
    
    function getThing() constant returns(string){
        return contThing;
    }
}
