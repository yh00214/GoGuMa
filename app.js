
var http = require('http')
var express = require('express')
var path = require('path')
var static = require('serve-static')
var bodyParser = require('body-parser')
var cors = require('cors') // 다른 서버로 접근하기위해서 사용
var hostname = '0.0.0.0';
var Web3 = require("web3");
const { constant } = require('async')

var app = express();
app.set('port', process.env.PORT || 8880); 
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json()); 
app.use(cors());
app.use('node_modules', express.static(path.join(__dirname, '/node_modules')))
app.set('views', __dirname + '/views');
app.set('views engin', 'ejs');
app.engine('html', require('ejs').renderFile);
var router = express.Router();

web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));	

app.use('/', router);

app.use(function (req, res, next) { 
  
    res.render('index.html');
})

http.createServer(app).listen(app.get('port'), function () {
    console.log("익스프레스로 웹 서버를 실행함 : " + app.get('port'));
}) 

router.route("/contract").post( function(req, res){
    console.log(req.body);
    
    var contfrom = req.body.contfrom;
    var contto = req.body.contto;
    var date = String(req.body.date);
    var address = req.body.address;
    var price = Number(req.body.price);
    var thing = req.body.thing;
    var year = Number(date.substring(0,4));
    var month = Number(date.substring(5,7));
    var day = Number(date.substring(8,10));
   
    if(web3.personal.unlockAccount(web3.eth.accounts[0],"admin")){
        console.log("unlock clear");
        var accounts = web3.eth.accounts;
        var abi = [{"constant":false,"inputs":[{"name":"_contto","type":"string"}],"name":"setTo","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_contAddress","type":"string"}],"name":"setAddress","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_contfrom","type":"string"}],"name":"setFrom","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"getcontTo","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"getThing","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"getAddress","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"contTo","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"getDate","outputs":[{"name":"","type":"uint256[]"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"date","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"contThing","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"contFrom","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_price","type":"uint128"}],"name":"setprice","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"getcontFrom","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"getPrice","outputs":[{"name":"","type":"uint128"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"price","outputs":[{"name":"","type":"uint128"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"contAddress","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_year","type":"uint128"},{"name":"_month","type":"uint128"},{"name":"_day","type":"uint128"}],"name":"setDate","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_contThing","type":"string"}],"name":"setThing","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_contfrom","type":"string"},{"name":"_contto","type":"string"},{"name":"_price","type":"uint128"},{"name":"_year","type":"uint128"},{"name":"_month","type":"uint128"},{"name":"_day","type":"uint128"},{"name":"_contAddress","type":"string"},{"name":"_contThing","type":"string"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"}];
        var sourceContract = web3.eth.contract(abi);
        //console.log(sourceContract);
        var contract= sourceContract.new( contfrom,contto,price,year,month,day,address,thing, {from:accounts[0], data:'0x6080604052606060405190810160405280600060ff168152602001600060ff168152602001600060ff1681525060039060036200003e929190620001f8565b503480156200004c57600080fd5b50604051620014043803806200140483398101806040528101908080518201929190602001805182019291906020018051906020019092919080519060200190929190805190602001909291908051906020019092919080518201929190602001805182019291905050508760009080519060200190620000cf9291906200024f565b508660019080519060200190620000e89291906200024f565b5085600260006101000a8154816fffffffffffffffffffffffffffffffff02191690836fffffffffffffffffffffffffffffffff160217905550846fffffffffffffffffffffffffffffffff16600360008154811015156200014657fe5b9060005260206000200181905550836fffffffffffffffffffffffffffffffff16600360018154811015156200017857fe5b9060005260206000200181905550826fffffffffffffffffffffffffffffffff1660036002815481101515620001aa57fe5b90600052602060002001819055508160049080519060200190620001d09291906200024f565b508060059080519060200190620001e99291906200024f565b505050505050505050620002fe565b8280548282559060005260206000209081019282156200023c579160200282015b828111156200023b578251829060ff1690559160200191906001019062000219565b5b5090506200024b9190620002d6565b5090565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106200029257805160ff1916838001178555620002c3565b82800160010185558215620002c3579182015b82811115620002c2578251825591602001919060010190620002a5565b5b509050620002d29190620002d6565b5090565b620002fb91905b80821115620002f7576000816000905550600101620002dd565b5090565b90565b6110f6806200030e6000396000f3006080604052600436106100fc576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff16806302e43047146101015780630599c2841461016a5780632c2f42c9146101d35780632fa4ba451461023c57806338b4ab28146102cc57806338cc48311461035c5780633d6662fc146103ec578063430fe9c11461047c57806360c757ba146104e8578063635399891461052957806374c85ec1146105b957806385ffb354146106495780639070796e1461068857806398d5fdca14610718578063a035b1fe14610767578063c9728eca146107b6578063d3cdc53314610846578063e4aff20f146108bd575b600080fd5b34801561010d57600080fd5b50610168600480360381019080803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509192919290505050610926565b005b34801561017657600080fd5b506101d1600480360381019080803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509192919290505050610940565b005b3480156101df57600080fd5b5061023a600480360381019080803590602001908201803590602001908080601f016020809104026020016040519081016040528093929190818152602001838380828437820191505050505050919291929050505061095a565b005b34801561024857600080fd5b50610251610974565b6040518080602001828103825283818151815260200191508051906020019080838360005b83811015610291578082015181840152602081019050610276565b50505050905090810190601f1680156102be5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b3480156102d857600080fd5b506102e1610a16565b6040518080602001828103825283818151815260200191508051906020019080838360005b83811015610321578082015181840152602081019050610306565b50505050905090810190601f16801561034e5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561036857600080fd5b50610371610ab8565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156103b1578082015181840152602081019050610396565b50505050905090810190601f1680156103de5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b3480156103f857600080fd5b50610401610b5a565b6040518080602001828103825283818151815260200191508051906020019080838360005b83811015610441578082015181840152602081019050610426565b50505050905090810190601f16801561046e5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561048857600080fd5b50610491610bf8565b6040518080602001828103825283818151815260200191508051906020019060200280838360005b838110156104d45780820151818401526020810190506104b9565b505050509050019250505060405180910390f35b3480156104f457600080fd5b5061051360048036038101908080359060200190929190505050610c50565b6040518082815260200191505060405180910390f35b34801561053557600080fd5b5061053e610c73565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561057e578082015181840152602081019050610563565b50505050905090810190601f1680156105ab5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b3480156105c557600080fd5b506105ce610d11565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561060e5780820151818401526020810190506105f3565b50505050905090810190601f16801561063b5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561065557600080fd5b5061068660048036038101908080356fffffffffffffffffffffffffffffffff169060200190929190505050610daf565b005b34801561069457600080fd5b5061069d610deb565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156106dd5780820151818401526020810190506106c2565b50505050905090810190601f16801561070a5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561072457600080fd5b5061072d610e8d565b60405180826fffffffffffffffffffffffffffffffff166fffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b34801561077357600080fd5b5061077c610eb3565b60405180826fffffffffffffffffffffffffffffffff166fffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b3480156107c257600080fd5b506107cb610ed5565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561080b5780820151818401526020810190506107f0565b50505050905090810190601f1680156108385780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561085257600080fd5b506108bb60048036038101908080356fffffffffffffffffffffffffffffffff16906020019092919080356fffffffffffffffffffffffffffffffff16906020019092919080356fffffffffffffffffffffffffffffffff169060200190929190505050610f73565b005b3480156108c957600080fd5b50610924600480360381019080803590602001908201803590602001908080601f016020809104026020016040519081016040528093929190818152602001838380828437820191505050505050919291929050505061100b565b005b806001908051906020019061093c929190611025565b5050565b8060049080519060200190610956929190611025565b5050565b8060009080519060200190610970929190611025565b5050565b606060018054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610a0c5780601f106109e157610100808354040283529160200191610a0c565b820191906000526020600020905b8154815290600101906020018083116109ef57829003601f168201915b5050505050905090565b606060058054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610aae5780601f10610a8357610100808354040283529160200191610aae565b820191906000526020600020905b815481529060010190602001808311610a9157829003601f168201915b5050505050905090565b606060048054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610b505780601f10610b2557610100808354040283529160200191610b50565b820191906000526020600020905b815481529060010190602001808311610b3357829003601f168201915b5050505050905090565b60018054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610bf05780601f10610bc557610100808354040283529160200191610bf0565b820191906000526020600020905b815481529060010190602001808311610bd357829003601f168201915b505050505081565b60606003805480602002602001604051908101604052809291908181526020018280548015610c4657602002820191906000526020600020905b815481526020019060010190808311610c32575b5050505050905090565b600381815481101515610c5f57fe5b906000526020600020016000915090505481565b60058054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610d095780601f10610cde57610100808354040283529160200191610d09565b820191906000526020600020905b815481529060010190602001808311610cec57829003601f168201915b505050505081565b60008054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610da75780601f10610d7c57610100808354040283529160200191610da7565b820191906000526020600020905b815481529060010190602001808311610d8a57829003601f168201915b505050505081565b80600260006101000a8154816fffffffffffffffffffffffffffffffff02191690836fffffffffffffffffffffffffffffffff16021790555050565b606060008054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610e835780601f10610e5857610100808354040283529160200191610e83565b820191906000526020600020905b815481529060010190602001808311610e6657829003601f168201915b5050505050905090565b6000600260009054906101000a90046fffffffffffffffffffffffffffffffff16905090565b600260009054906101000a90046fffffffffffffffffffffffffffffffff1681565b60048054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610f6b5780601f10610f4057610100808354040283529160200191610f6b565b820191906000526020600020905b815481529060010190602001808311610f4e57829003601f168201915b505050505081565b826fffffffffffffffffffffffffffffffff1660036000815481101515610f9657fe5b9060005260206000200181905550816fffffffffffffffffffffffffffffffff1660036001815481101515610fc757fe5b9060005260206000200181905550806fffffffffffffffffffffffffffffffff1660036002815481101515610ff857fe5b9060005260206000200181905550505050565b8060059080519060200190611021929190611025565b5050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061106657805160ff1916838001178555611094565b82800160010185558215611094579182015b82811115611093578251825591602001919060010190611078565b5b5090506110a191906110a5565b5090565b6110c791905b808211156110c35760008160009055506001016110ab565b5090565b905600a165627a7a7230582090575fffdaf70f30181222ea140e98b83c4e81d5ef7e0ece5fee5a1bdbb8eee90029', gas:'4700000'});
       
        if(contract.address == "undefine"){
            console.log("before mining");
        }
  
    }else{
        console.log("unlock error");
    }

})