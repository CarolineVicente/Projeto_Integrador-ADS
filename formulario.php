<?php

if(isset($_POST['submit'])){

include_once('conexao.php');

    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $telefone = $_POST['telefone'];
    $sexo = $_POST['sexo'];
    $nascimento = $_POST['data_nascimento'];
    $cidade = $_POST['cidade'];
    $Estado = $_POST['Estado'];
    $Endereço = $_POST['Endereço'];
    $nacionalidade = $_POST['nacionalidade'];

    $result = mysqli_query($conexao, "INSERT INTO usuarios (nome,email,senha,telefone,sexo,data_nascimento,cidade,estado,endereco,nacionalidade)
        VALUES('$nome','$email','$senha','$telefone','$sexo','$nascimento','$cidade','$Estado','$Endereço','$nacionalidade')");
}

?>


