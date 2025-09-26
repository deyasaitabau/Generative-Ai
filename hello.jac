"""A Very Simple Calculator"""

walker Calculator {
    has a: float = 0;
    has b: float = 0;
    has result: float = 0;
    has operator: str = "";  # field to store operation

    can calculate {
        if operator == "add" {
            result = a + b;
        } elif operator == "subtract" {
            result = a - b;
        } elif operator == "multiply" {
            result = a * b;
        } elif operator == "divide" {
            if b != 0 {
                result = a / b;
            } else {
                result = "Error: Division by zero";
            }
        }
        print("Result:", result);
    }
}

with entry:__main__ {
    let calc1 = root spawn Calculator();
    calc1.a = 5;
    calc1.b = 3;
    calc1.operator = "add";
    calc1.calculate();

    let calc2 = root spawn Calculator();
    calc2.a = 10;
    calc2.b = 2;
    calc2.operator = "divide";
    calc2.calculate();
}
