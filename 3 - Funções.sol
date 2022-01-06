// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract funcoes {
    //_a Underline na variavel, informa que é uma variavel temporaria como um parametro de função

    //external - função visivel somente fora do contrato
    //returns - função que retorna dados (com o tipo)
    //pure - não altera nem le dados da blockchain
    //view - somente le dados
    //memory - onde retorna o valor (em  memoria)
    //payble - função pagavel - haiblitada a receber dinheiro (ether)
    //public - acessivel de qualquer lugar

    //Função
    function soma(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a + _b;
    }

    string nome = "Murilo";

    // Função que so retorna dados
    function qualNome() external view returns (string memory) {
        return nome;
    }

    mapping(address => uint256) saldos;

    //Funções pagaveis recebe ether de fora do contrato e atualiza o saldo do usuario
    function investir() public payable returns (uint256) {
        saldos[msg.sender] += msg.value;

        return saldos[msg.sender];
    }
}
