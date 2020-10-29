package Chapter_12_example;

public class Calculator {
    private String num1;
    private String num2;
    private String operator;
    private double result;

    //set/get方法
    public String getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public String getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public double getResult() {
        return result;
    }

    public void setResult(double result) {
        this.result = result;
    }

    //业务逻辑处理方法
    public void computer(){
        Double d_num1 = Double.parseDouble(num1);
        Double d_num2 = Double.parseDouble(num2);

        if ("+".equals(operator)){
            result = d_num1 + d_num2;
        } else if ("-".equals(operator)) {
            result = d_num1 - d_num2;
        } else if ("*".equals(operator)) {
            result = d_num1 * d_num2;
        } else if ("/".equals(operator)) {
            result = d_num1 / d_num2;
        }
    }
}
