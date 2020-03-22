<%@ page language="java" import="java.sql.*"  %>

<%

// ----- cria as variaveis e armazena
// ----- as informações digitadas pelo usuário 
String vnome = request.getParameter("txtnome");
String vemail= request.getParameter("txtemail");
int    vtelefone= Integer.parseInt(request.getParameter("txttelefone"));
String vassunto= request.getParameter("txtassunto");
String vmensagem= request.getParameter("txtmen");

// ----- cria as variaveis para acessar o banco de dados
String driver = "net.sourceforge.jtds.jdbc.Driver" ;
String url = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd208522017" ;
String usuario = "bd208522017";
String senha = "123456";

// ----- carrega o driver na memória
Class.forName( driver ) ;

// ----- abre a conexao com o banco de dados
Connection conexao = DriverManager.getConnection( url, usuario, senha ) ;

// ----- comando para inserir no BD
String sql = "insert into versusaca (vernome,veremail,vertelefone,verassunto,vermensagem) values ('" + vnome + "','" + vemail + "'," + vtelefone + ",'" + vassunto + "','" + vmensagem + "')" ;

Statement stm = conexao.createStatement() ;

// ----- executa o comando de inserir
stm.executeUpdate( sql ) ;

out.print("Entraremos em contato!!!<br><br>") ;

out.print("<a href='contato.html'>") ;
out.print("Voltar") ;
out.print("</a>") ;

%>







