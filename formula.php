<?php
// incluir a conexao com banco de dados
include_once 'conexao.php';

$conteudo = $_GET['conteudo'];
$formulas = $_GET['formulas'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <mzeta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/formulas.css">
    <link rel="shortcut icon" href="img/logo_resized.png" type="image/x-icon">
    <title>Fórmulas</title>  
</head>
<body>
<header>
    <nav class="container">
        <a href="./sobre_nos.html">Sobre nós</a>
        <div id="logo">
            <a href="index.html">
                <img src="img/logo.png" alt="logo" width="200px" height="100px">
            </a>
        </div>
        <a href="./projeto.html">Projeto</a>
    </nav>
</header>
<div class="wrapper-calc">
    <div class="container">
      <div class="retangulo">
      <?php
      // consulta dos conteudos
      $sql = "SELECT * FROM conteudo WHERE ConteudoID =".$conteudo;
      $resultado = mysqli_query($conexao, $sql);
      $dados = mysqli_fetch_array($resultado, MYSQLI_ASSOC);
      ?>
      <h2><?php echo $dados['Nome'];?></h2>
      <p><?php echo $dados['Conceito'];?></p>

</div>
        <div id="calc">
    <div id="calc">
      <h3>Calculadora</h3>
      <div id="operations">
        <?php
        // consulta dos conteudos
        $sql = "SELECT * FROM formulas WHERE FormulaID =".$formulas;
        $resultado = mysqli_query($conexao, $sql);
        $dados = mysqli_fetch_array($resultado, MYSQLI_ASSOC);

        ?>


        <div id="previous-operation"><?php echo $dados['Estrutura'];?></div>
        <div id="current-operation"></div>
      </div>
      <div id="buttons-container">
        <button>CE</button>
        <button>C</button>
        <button>DEL</button>
        <button>÷</button>
        <button class="number">7</button>
        <button class="number">8</button>
        <button class="number">9</button>
        <button>×</button>
        <button class="number">4</button>
        <button class="number">5</button>
        <button class="number">6</button>
        <button>-</button>
        <button class="number">1</button>
        <button class="number">2</button>
        <button class="number">3</button>
        <button>+</button>
        <button class="number">0</button>
        <button class="number">,</button>
        <button id="equal-btn">=</button>
      </div>
    </div>
  </body>
</html>
        </div>
    <div class="retangulo"> 
    <?php
    $sql = "SELECT * FROM formulas WHERE FormulaID =".$formulas;
    $resultado = mysqli_query($conexao, $sql);
    $dados = mysqli_fetch_array($resultado, MYSQLI_ASSOC);
    ?>
    <h2><?php echo $dados['Nome']; ?></h2>
        
        <?php
        // consulta dos conteudos
        $sql = "SELECT v.* FROM conteudo AS c
        INNER JOIN subconteudo AS sc ON c.ConteudoID = sc.ConteudoID
        INNER JOIN formulas AS f ON sc.SubConteudoID = f.SubConteudoID
        INNER JOIN variaveis AS v ON f.FormulaID = v.FormulaID
        WHERE c.ConteudoID = ".$conteudo." AND v.FormulaID =".$formulas;

        $resultado = mysqli_query($conexao, $sql);
        while ($value = mysqli_fetch_array($resultado, MYSQLI_ASSOC)) {    
          ?>
            <input type="number">
            <p><?php echo $value['Variavel'] . ' = ' . $value['Conceito'];?></p>      
          <?php
        }
        ?>
         
        </div>
    </div>
</div>

</body>
</html>