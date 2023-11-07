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

        this.currentOperation = digit
        this.updateScreen()
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
        
        if(operationValue === null) {
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