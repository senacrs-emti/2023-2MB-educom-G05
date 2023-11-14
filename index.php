<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="./index.php" method="get">
    
        <label for="">Vm</label>
        <label for="">∆d</label><input type="number" name="D">
        <label for="">∆t</label><input type="number" name="T">
        <input type="submit" value="Calcular">
        <?php

            $form = 'VM = D / T';// precisa vir do banco de dados
            $colecaoVariaveis = array('D','T');
            $form = trim( substr( $form, strpos($form, '=')+1, strlen($form)) );
            // percorre todas as variaveis da formula do banco
            foreach ($colecaoVariaveis as $key => $value) {
                $form = str_replace($value,$_GET[$value],$form);
            }            
            // Process the expression as regular PHP code
            eval('$result = @(' . $form . ');');

        ?>

        <h2>Resposta: <span id="resposta"><?php echo $result;?></span></h2>
    </form>
</body>
</html>