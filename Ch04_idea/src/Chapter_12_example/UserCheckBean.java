package Chapter_12_example;

public class UserCheckBean {

    //使用用户信息的数组模拟一个数据库信息，来保存用户信息
    private static UserBean[] users = new UserBean[3];

    //这里是使用static代码块，JVM加载类时会执行这些代码块，可有多个，根据先后顺序执行，类似构造方法但又无需定义形参(见笔记)
    //静态代码块：https://www.cnblogs.com/ningvsban/p/3591834.html
    //静态代码块，构造代码块和构造函数的执行顺序:https://blog.csdn.net/diweikang/article/details/94589818
    //构造函数和构造代码块:https://www.cnblogs.com/zyx110/p/10659889.html
    static {
        UserBean user1 = new UserBean();
        user1.setUsername("zhangsan");
        user1.setPassword("123");
        users[0] = user1;
        UserBean user2 = new UserBean();
        user2.setUsername("lili");
        user2.setPassword("1");
        users[1] = user2;
        UserBean user3 = new UserBean();
        user3.setUsername("wangwu");
        user3.setPassword("2");
        users[2] = user3;
    }

    /**
     * 根据传递过来的用户信息，从数据库中查找满足条件的用户，如果能够查找成功，则返回true，否则返回false
     * @param user
     * @return
     */
    public boolean checkUser(UserBean user){
        //从数据库中查询是否存在满足条件的用户
        UserBean[] userArray = UserCheckBean.users; //获取用户数据
        int i = 0;
        //遍历用户数据，并逐一进行检验，查看是否有满足条件的用户
        for (; i < userArray.length; i ++){
            if (userArray[i].getUsername().equals(user.getUsername()) && userArray[i].getPassword().equals(user.getPassword())){
                return true;
                //java一旦有return语句,会结束整个程序的执行。所以,程序不会再继续执行了!!!!!!!
            }
        }
        //如果遍历次数等于甚至是大于存储数组长度，则表示将所有用户查找完了还是没有满足条件的用户
        if (i >= userArray.length){ //遍历完成，i应该恰巧等于userArray.length
            return false;
        }else{
            return true;
        }
    }
}
