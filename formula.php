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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
      <h2 id="cinematica"><?php echo $dados['Nome'];?></h2>
      <p id="conc"><?php echo $dados['Conceito'];?></p>
      
      <h2>Subconteúdos:</h2>
      <ul>
        <li id="sim"><a href="" class="simm">Velocidade</a></li>
        <li id="sim"><a href="" class="simm">Movimento Uniforme</a></li>
        <li id="sim"><a href="" class="simm">Movimento Uniformemente Variado</a></li>
        <li id="sim"><a href="" class="simm">Movimento Vertical</a></li>
      </ul>
      
</div>
        <div id="calc">
    <div id="calc">
      <a id="titulo" href="http://">Calculadora</a>

      <i id="menu" class="material-icons" onclick="clickMenu()">menu<p id="titulo"></p></i>
      <menu id="itens">
        <ul>
            <li class="icone" id="padrao"><a href="./index.html" class="nao">Padrão</a></li>
            <li class="icone" id="cine"><a href="http://localhost/2023-2MB-educom-G05/formula.php?conteudo=3&formulas=7" class="nao">Cinemática</a></li>
            <li class="icone" id="termo"><a href="#" class="nao">Termometria</a></li>
            <li class="icone" id="optica"><a href="#" class="nao">Óptica</a></li>
            <li class="icone" id="acustica"><a href="#" class="nao">Acústica</a></li>
            <li class="icone" id="eletro"><a href="#" class="nao">Eletrostática</a></li>
        </ul>
    </menu>

    <script>
        function clickMenu(){
            if(itens.style.display == 'block'){
                itens.style.display = 'none'
            } else {
                itens.style.display = 'block'
            }
        }
    </script>

      <div id="operations">
        <?php
        // consulta dos conteudos
        $sql = "SELECT * FROM formulas WHERE FormulaID =".$formulas;
        $resultado = mysqli_query($conexao, $sql);
        $dados = mysqli_fetch_array($resultado, MYSQLI_ASSOC);

        ?>

        <input type="hidden" id="Computacional" value="<?php echo $dados['FormulaComputacional'];?>">
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
        <button onclick="calcula()" id="equal-btn">=</button>
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
          <p id="varia"><?php echo $value['Variavel'] . ' = ' . $value['Conceito'];?></p>
          <?php 
          if ($value['Resultado'] == 0 ) {
          ?> 
            <input type="number" id ="retangulo"<?php echo $value['Variavel']; ?>" class ="Variaveis"> 
          <?php } else {
            
          } 
        }
        ?>
         
        </div>
    </div>
</div>
<script src="./js/calc.js"></script>
</body>
</html>