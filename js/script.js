
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

function cleaner(type) {

    switch (type) {
        case 'del':
            previousOperationText.innerHTML =  previousOperationText.innerText.slice(0, -1);
            currentOperationText.innerHTML =  currentOperationText.innerText.slice(0, -1);        
        break;

        case 'ce':
        
        break;

        case 'c':
            break;
    }
    previousOperationText.innerHTML =  previousOperationText.innerText.slice(0, -1);
    currentOperationText.innerHTML =  currentOperationText.innerText.slice(0, -1);
}

function operations(op) {
    executeOp();

    if (op <= 4){
        operator = op;
    }else {
        operator = 0;
    }
    updateprevious();

    //alert("Num1: " + num1 + " --- Num2: " + num2 + " --- Operator: " + operator);
}

