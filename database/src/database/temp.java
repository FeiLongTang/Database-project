package database;

import java.io.FileReader;
import java.util.Scanner;
import java.util.Vector;

public class temp {
	private static Scanner fin;
	private static Scanner now;
	public static void main(String[] args) {
		Sql_connetcton.login_s("admin","admin");
			try{
				FileReader freader=new FileReader("C:\\Users\\jxy1\\Documents\\GitHub\\Database-project\\��������\\teacher.txt");
				fin = new Scanner(freader);
				String sql="insert �α�  values(",tsql;
				String s;
				int num=1;
				while(fin.hasNext()){
					s=fin.nextLine();
					now = new Scanner(s);
					now.useDelimiter("\t"); //�����Ǹ��ݶ��ŷָ���
					tsql=sql;
					while(now.hasNext()){
						tsql+="'"+now.next()+"',";
					}
					tsql=tsql.substring(0, tsql.length()-1)+")";
					Sql_connetcton.Do(tsql);
				}
			}catch (Exception e){
				e.printStackTrace();
		}
	}
}

