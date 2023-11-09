/*
const previousOperationText = document.querySelector("#previous-operation");
const currentOperationText = document.querySelector("#current-operation");
const buttons = document.querySelectorAll("#buttons-container button");

class Calculator {
    constructor(previousOperationText, currentOperationText) {
        this.previousOperationText = previousOperationText
        this.currentOperationText = currentOperationText
        this.currentOperation = ""
    }

    //add digito na tela da calculadora
    addDigit(digit) {
        // checar se a operação atual já tem um .
        if(digit === "." && this.currentOperationText.innerText.includes(".")){
          return;
        }
        this.currentOperation = digit;
        this.updateScreen();
    }

    // processa todas as operações da calculadora
    processOperation(operation){
        // checa se o valor atual ta vazio
        if(this.currentOperationText.innerText === "" && operation !== "C") {
            // mudar operação
            if (this.previousOperationText.innerText !== "") {
                this.ChangeOperation(operation);
            }
            return;
        }

        //pega operação atual e previa do valor
        let operationValue;
        const previous = +this.previousOperationText.innerText.split(" ")[0];
        const current = +this.currentOperation.innerText;

        switch (operation) {
            case "+":
                operationValue = previous + current;
                this.updateScreen(operationValue, operation,current, previous);
                break;
            case "-":
                operationValue = previous - current;
                this.updateScreen(operationValue, operation,current, previous);
                break;
            case "÷":
                operationValue = previous / current;
                this.updateScreen(operationValue, operation,current, previous);
                break;
            case "×":
                operationValue = previous * current;
                this.updateScreen(operationValue, operation,current, previous);
                break;
            case "DEL":
                this.processDelOperator();
                break;
            case "CE":
                this.processClearCurrentOperation();
                break;
            case "C":
                this.processClearOperation();
                break;
            case "=":
                this.processEqualOperator();
                break;
            default:
                return;
        }
    }

    //muda valores da tela da calculadora 
    updateScreen(
        operationValue = null, 
        operation = null, 
        current = null,
        previous = null    
    ) {
        
        console.log(this.currentOperation);


        if(operationValue === null) {
            let valor = document.getElementById('current-operation').value;
            valor = valor + this.currentOperation;
            console.log(valor);
            document.getElementById('current-operation').innerHTML = valor;

            
            this.currentOperation.innerText += this.currentOperation;
        } else {
            // checar se o valor é zero, se for add o valor atual
            if(previous === 0) {
                operationValue = current
            }

            // add valor atual para previa 
            this.previousOperationText.innerText = `${operationValue} ${operation}`
            this.currentOperationText.innerText = "";
        }
    }
    // muda operação matematica
    changeOperation(operation) {
        const mathOperations = ["*", "/", "+", "-"]

        if (!mathOperations.includes(operation)) {
            return
        }

        this.previousOperationText.innerText = this.previousOperationText.innerText.slice(0, -1) + operation;
    }

    //apaga ultimo digito
    processDelOperator() {
        this.currentOperationText.innerText = this.currentOperationText.innerText.slice(0, -1);
    }

    // limpa a operação atual
    processClearCurrentOperation() {
        this.currentOperationText.innerText = "";
    }

    // limpa todas operações
    processClearOperation() {
        this.currentOperationText.innerText = "";
        this.previousOperationText.innerText = "";
    }

    // processa igual
    processEqualOperator() {
        const operation = previousOperationText.innerText.split(" ")[1]
        this.processClearOperation(operation);
    }
}

const calc = new Calculator(previousOperationText, currentOperationText);

// clique dos botoes
buttons.forEach((btn) => {
    btn.addEventListener("click", (e) => {
        const value = e.target.innerText;

        if(+value >= 0 || value === ".") {
            calc.addDigit(value);
        } else {
            calc.processOperation(value);
        }
    });
});
*/
const previousOperationText = document.querySelector("#previous-operation");
const currentOperationText = document.querySelector("#current-operation");

let num1 = 0;
let num2 = 0;

let isSetNum1 = false;
let isSetNum2 = false;

let operator = 0;

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
                num2 = 0;
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
        default: return ' ';
    }
}

function updateprevious() {
    if (!isSetNum1) {
        previousOperationText.innerHTML = num2;
        return;
    }

    let char = charop();

    if (char == ' ') return;

    if (!isSetNum2) {
        previousOperationText.innerHTML = num1 + char;
        return;
    }

    
    previousOperationText.innerHTML = num1 + char + num2;
}

function operations(op) {
    executeOp();

    if (op <= 4) operator = op;
    else operator = 0;

    updateprevious();

    //alert("Num1: " + num1 + " --- Num2: " + num2 + " --- Operator: " + operator);
}