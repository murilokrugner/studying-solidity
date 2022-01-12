// SPDX-License-Identifier: MIT

//external - função chamada somente de fora do contrato (dentro do contrato não é possivel encontrar essa função)
//internal - somente dentro do contrato (e contrato filhos - herança)
//public - acessivel de qualquer lugar
//private - somente o contrato onde a função está escrita

pragma solidity ^0.8.11;

contract visibilidade {
    string meuNome = "Murilo";

    function qualNome() public view returns (string memory) {
        return meuNome;
    }

    function qualNome2() external view returns (string memory) {
        return meuNome;
    }

    function qualNome3() private view returns (string memory) {
        return meuNome;
    }

    function qualNome4() internal view returns (string memory) {
        return meuNome;
    }
}

//Contrato derivado do acima
contract B is visibilidade {
    function ha() external view returns (string memory) {
        return qualNome4();
    }
}
