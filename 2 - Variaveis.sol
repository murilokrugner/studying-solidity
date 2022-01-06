// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract meuContrato {
    //TIPOS DE VARIAVEIS
    uint256 minhaidade = 10; //numeros inteiros (SOMENTE NUMEROS POSITIVOS)
    string nome = "Murilo"; //string
    address carteira = msg.sender; //endereço de carteira ou de contrato
    bool estaAtivo = false; //booleano true or false

    bytes32 data; //Qualquer tipo de dados ate 32 bytes (otimização de gas)

    uint256[] numeros; //lista de numeros inteiros
    string[] lista; //lista de strings (textos)
    address[] addressList; //Lista de endereços

    mapping(address => uint256) saldos; //DICIONARIOS (CHAVE E VALOR)

    struct Usuario {
        uint256 id;
        string name;
        address address_wallet;
    } //criado para padrão de dados

    enum Cores {
        VERMELHO,
        PRETO,
        VERDE
    } //Categorias EX: Cores.VERMELHO

    function usandoVariavel() internal {
        numeros.push(1);
        estaAtivo = true;

        //  numeros[msg.sender] = 10;

        // string memory algumacor;
    }
}
