// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

//internal - visivel somnete dentro do contrato e contratos herdados
//private - visivel somente dentro do contrato (não colocar variaveis publicas)
//public - acessivel de qualquer lugar

contract visibilidade {
    //string private nome;
    string internal nome;

    function salvaNome(string memory _nome) external {
        nome = _nome;
    }

    function qualNome() internal view returns (string memory) {
        return nome;
    }
}

contract outro is visibilidade {
    function hoo() external view returns (string memory) {
        return qualNome();
    }
}
