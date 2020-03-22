<%@ page language="java" import="java.sql.*"  %>


<%
// ----- cria as variaveis para acessar o BD
String driver = "net.sourceforge.jtds.jdbc.Driver" ;
String url = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd208522017" ;
String usuario = "bd208522017";
String senha = "123456";

// ----- carrega o driver na memória
Class.forName( driver ) ;

// ----- abre a conexao com o BD
Connection conexao = DriverManager.getConnection( url, usuario, senha ) ;

// ----- comando para consultar no BD
String sql = "select * from versusaca" ;

Statement stm = conexao.createStatement() ;


// ----- executa o comando Select 
// ----- e armazena as informações do BD
// ----- na variável dados
ResultSet dados = stm.executeQuery(sql);

out.print( "<table border='1'>"  ) ;

// ----- cria o loop para percorrer 
// ----- todos os registros 
while ( dados.next()  ) {

out.print( "<tr>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("vercodigo")  ) ;
 out.print( "</td>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("vernome")  ) ;
 out.print( "</td>"  ) ;
  out.print( "<td>"  ) ;
   out.print( dados.getString("veremail")  ) ;
 out.print( "</td>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("vertelefone")  ) ;
 out.print( "</td>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("verassunto")  ) ;
 out.print( "</td>"  ) ;
  out.print( "<td>"  ) ;
   out.print( dados.getString("vermensagem")  ) ;
 out.print( "</td>"  ) ;

out.print( "</tr>"  ) ;
}

%>




