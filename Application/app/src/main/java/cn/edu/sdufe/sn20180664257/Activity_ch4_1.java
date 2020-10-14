package cn.edu.sdufe.sn20180664257;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class Activity_ch4_1 extends AppCompatActivity implements Button.OnClickListener{

    TextView textView1 = (TextView) findViewById(R.id.ch4_1_tv1);
    Button button1 = (Button) findViewById(R.id.ch4_1_bt1);
    Button button2 = (Button) findViewById(R.id.ch4_1_bt2);
    Button button3 = (Button) findViewById(R.id.ch4_1_bt3);
    Button button4 = (Button) findViewById(R.id.ch4_1_bt4);
    EditText editText1 = (EditText) findViewById(R.id.ch4_1_et1);
    EditText editText2 = (EditText) findViewById(R.id.ch4_1_et2);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //加载布局文件
        setContentView(R.layout.layout_ch4_1);

        //初始化运算数

        //获取各界面组件


        //1)使用内部匿名类的形式
        button1.setOnClickListener(new Button.OnClickListener(){
            @Override
            public void onClick(View v){
                int num1 = Integer.parseInt(editText1.getText().toString());
                int num2 = Integer.parseInt(editText2.getText().toString());
                int result = num1 + num2;
                String string = Integer.toString(result);
                textView1.setText(string);
            }
        });

        // 2)以内部类的形式实现监听器(作用于bt2)
        button2.setOnClickListener(new MyListener1());

        //3)直接实现接口
        //设置事件源（button3）
        button3.setOnClickListener(this);


    }

    //2) 以内部类的形式实现监听器(作用于bt2)
    class MyListener1 implements View.OnClickListener{
        @Override
        public void onClick(View view){
            int num1 = Integer.parseInt(editText1.getText().toString());
            int num2 = Integer.parseInt(editText2.getText().toString());
            int result = num1 - num2;
            String string = Integer.toString(result);
            textView1.setText(string);
        }
    }

    //3)直接实现接口
    //实现监听器接口的方法
    @Override
    public void onClick(View v) {
        int num1 = Integer.parseInt(editText1.getText().toString());
        int num2 = Integer.parseInt(editText2.getText().toString());
        int result = num1 * num2;
        String string = Integer.toString(result);
        textView1.setText(string);
    }

    public void onClick2(View v) {
        int num1 = Integer.parseInt(editText1.getText().toString());
        int num2 = Integer.parseInt(editText2.getText().toString());
        int result = num1 / num2;
        String string = Integer.toString(result);
        textView1.setText(string);
    }

}
