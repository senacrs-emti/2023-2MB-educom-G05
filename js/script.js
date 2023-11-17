
/*const previousOperationText = document.querySelector("#previous-operation");
const currentOperationText = document.querySelector("#current-operation");

let num1 = '';
let num2 = '';

let isSetNum1 = false;
let isSetNum2 = false;

let operator = '';

function number(num) {
    num2 *= 10;
    num2 += num;

    isSetNum2 = true;

    currentOperationText.innerHTML = num2;

    updateprevious();
}

function executeOp() {
    if (!isSetNum1 && isSetNum2) {
        num1 = num2;
        num2 = 0;
        isSetNum1 = true;
        isSetNum2 = false;
    }
    else if (isSetNum1 && isSetNum2) {
        switch (operator) {
            case 1: {
                num1 += num2;
                //num2 = 0;
                isSetNum2 = false;
                break;
            }
            case 2: {
                num1 -= num2;
                num2 = 0;
                isSetNum2 = false;
                break;
            }
            case 3: {
                num1 *= num2;
                num2 = 0;
                isSetNum2 = false;
                break;
            }
            case 4: {
                num1 /= num2;
                num2 = 0;
                isSetNum2 = false;
                break;
            }
            default: break;
        }

        currentOperationText.innerHTML = num1;
    }
}

function charop() {
    switch (operator) {
        case 1: return ' + ';
        case 2: return ' - ';
        case 3: return ' × ';
        case 4: return ' ÷ ';
        default: return '';
    }
}

function updateprevious() {

    let char = charop();

    if( char === ''){
        console.log(previousOperationText.innerHTML);
        console.log(currentOperationText.innerHTML);
        
    }else{
        
        if( currentOperationText.innerHTML != 0){
            if (!isSetNum1) {
                previousOperationText.innerHTML = num2;
                return;
            }
            if (!isSetNum2) {
                previousOperationText.innerHTML = num1 + char;
                return;
            }
            
        }
        previousOperationText.innerHTML = num1 + char + num2;    
    }
    




}

function cleaner(type) {
    operator = ' ';
    switch (type) {
        case 'del':
            previousOperationText.innerHTML =  previousOperationText.innerText.slice(0, -1);
            currentOperationText.innerHTML =  currentOperationText.innerText.slice(0, -1);        
        break;

        case 'ce':
            previousOperationText.innerText = 0;
        break;

        case 'c':
            previousOperationText.innerText = 0;
            currentOperationText.innerText = 0;
            
            break;
    }

    updateprevious();

    
}

function operations(op) {
    executeOp();

    if (op <= 4){
        operator = op;
    }else {
        operator = '';
    }
    updateprevious();

} */

function insert(num)
{
    var numero = document.getElementById('resultado').innerHTML;
    document.getElementById('resultado').innerHTML = numero + num;
}
function clean()
{
    document.getElementById('resultado').innerHTML = "";
}
function back()
{
    var resultado = document.getElementById('resultado').innerHTML;
    document.getElementById('resultado').innerHTML = resultado.substring(0, resultado.length -1);
}
function calcular()
{
    var resultado = document.getElementById('resultado').innerHTML;
    if(resultado)
    {
        document.getElementById('resultado').innerHTML = eval(resultado);
    }
    else
    {
        document.getElementById('resultado').innerHTML = "Nada..."
    }
}
function menuOnClick() {
    document.getElementById("menu-bar").classList.toggle("change");
    document.getElementById("nav").classList.toggle("change");
    document.getElementById("menu-bg").classList.toggle("change-bg");
  }

