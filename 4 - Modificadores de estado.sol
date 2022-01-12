// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

//SE NÃO DEFINICAR NADA O PADRÃO É PADRAO (TRANSACION) RSRS
//padrao - TRANSACTION (TEM CUSTO DE MINEIRAÇÃO)
//view - SOMENTE LE O ESTADO DA BLOCKCHAIN
//pure - NÃO LE NEM ALTERA O ESTADO DA BLOCKCHAIN

//SE ALTERAR DADOS, TEM TAXA DE MINEIRAÇÃO

//CALL - NÃO ALTERA OS DADOS DA BLOCKCHAIN
// TRANSACTION - ALTERA OS DADOS DA BLOCKCHAIN

contract parametros {
    uint256 numero = 10;

  /*  function qualNumero() external returns (uint256) {
        return numero;
    }
  */  
    function qualNumeroView() external view returns (uint256) {
        return numero;
    }

    function calcula(uint256 a, uint256 b) external pure returns (uint256) {
        return a + b;
    }
}
