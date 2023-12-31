<?php
// incluir a conexao com banco de dados
include_once 'conexao.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <mzeta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/index.css">
    <link rel="shortcut icon" href="img/logo_resized.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>FisiForm</title>  
</head>
<body>
<header>
    <nav class="container">
        <a class="os_bgl" href="">Sobre nós</a>
        <div id="logo">
            <a href="index.php">
                <img src="img/logo.png" alt="logo" width="200px" height="100px">
            </a>
        </div>
        <a class="os_bgl" href="./projeto.html">Projeto</a>
    </nav>
</header>
<div class="wrapper-calc">
    <div class="container">
      <div class="retangulo"><p class="text"></p></div> 
        <div id="calc">
  <head>
  <body>
    <div id="calc">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>JS Calc</title>
        <link rel="stylesheet" href="css/styles.css" />
        <script src="js/script.js" defer></script>
    </head>
      <h3>Calculadora</h3>

      <i id="menu" class="material-icons" onclick="clickMenu()">menu</i>
      <menu id="itens"> 
        <ul>
          <li class="icone" id="padrao"><a href="./index.php">Padrão</a></li>
          <?php
             $sql = "SELECT c.Nome, c.ConteudoID,f.FormulaID FROM conteudo AS c 
             INNER JOIN subconteudo AS sc ON c.ConteudoID = sc.ConteudoID 
             INNER JOIN formulas AS f ON sc.SubConteudoID = f.SubConteudoID 
             INNER JOIN variaveis AS v ON f.FormulaID = v.FormulaID 
             GROUP BY c.Nome;";
              $resultado = mysqli_query($conexao, $sql);
              while ($value = mysqli_fetch_array($resultado, MYSQLI_ASSOC)) {   
              ?>
                <li  class="icone" ><a href="./formula.php?conteudo=<?php echo $value['ConteudoID'];?>&formulas=<?php echo $value['FormulaID'];?>"><?php echo $value['Nome'];?></a></li>
              <?php
              } 
              ?>
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
        <div id="previous-operation"></div>
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
        </div>
    </div>
</div>

</body>
</html>