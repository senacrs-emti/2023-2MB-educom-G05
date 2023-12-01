function calcula() {
    // captura as variaveis
    let variaveis = document.getElementsByClassName('Variaveis');
    console.log(variaveis); 
    // captura as formulas
    let formula = document.getElementById('Computacional').value;
    console.log(formula); 
    // laco-substituicao
    for (let i = 0; i < variaveis.length; i++) {
        console.log(variaveis[i].value); 
        console.log(variaveis[i].id);
        formula = formula.replaceAll(variaveis[i].id, variaveis[i].value);
    } 
    console.log(formula); 
    const dados = formula.split("=");
    console.log(dados);
    let resultado = eval(dados[1].trim()); 
    document.getElementById('current-operation').innerHTML = resultado;
}
