package database;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Vector;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.sun.xml.internal.fastinfoset.util.StringArray;

import sun.jdbc.odbc.JdbcOdbcDriver;
public class Sql_connetcton {
	private static String url="jdbc:odbc:jxy";
	private static Connection con=null;
	private static String sql;
	private static Statement stmt;
	public static void init(){
		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}
	}
	public static int login_s(String user,String password){
		try {
			init();
			con=DriverManager.getConnection(url, user, password);
			stmt=con.createStatement();
		} catch (SQLException e) {
			return 1;
		}
		return 0;
	}
	public static String[][] find_student(int index,String s){
		if(s!=null && s.equals(""))s=null;
		sql="exec ѧ��_Find ";
		for(int i=0;i<5;i++){
			if(i==index&&s!=null)sql+="\""+s+"\"";
			else sql+="NULL";
			if(i!=4)sql+=",";
		}
		ResultSet result;
		String []now;
		ArrayList<String[]> a=new ArrayList<>();
		try{
			result=stmt.executeQuery(sql);
			int ind=0,i;
			while(result.next()){
				now=new String[5];
				for(i=0;i<5;i++){
					now[i]=result.getString(i+1);
					if(now[i]==null)now[i]="NULL";
				}
				now[4]=now[4].split(" ")[0];//ȥ�����ڵ�ʱ��
				a.add(now);
			}	
			String [][]ans=new String[a.size()][5];
			for(ind=0;ind<a.size();ind++)
				ans[ind]=a.get(ind);
			return ans;
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}
	}
	public static boolean insert(Vector<String> data,String name){
		login_s("admin","admin");
			sql="exec "+name+"_INS ";
			for(int i=0;i<data.size();i++){
				if(data.get(i).equals("NULL")==false){
					sql+="\""+data.get(i)+"\"";
				}else{
					sql+="NULL";
				}
				if(i!=data.size()-1)sql+=",";
			}
			try {
				stmt.execute(sql);
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				//e.printStackTrace();
				return false;
			}
		
		
		
	}
	public static void close(){
		try {
			if(stmt!=null)stmt.close();
			if(con!=null)con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static void main(String[] args) {
	//	System.out.print(login_s("admin","admin"));
		
		System.out.print(find_student(1, null));
	}
	
}
