import java.io.*;

class Main{

	static public void main(String argv[]){
		try{
			parser p = new parser(new Yylex(System.in));
			Object result = p.parse().value;
		}
			catch(Exception e){
			e.printStackTrace();
			}
	}
}
