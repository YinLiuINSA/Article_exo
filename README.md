Article_exo
===========

A simple dynamic web application with java sevlet+jsp

Pour la mettre en service, on doit utiliser un Web serveur (tomcat glassfish jetty etc.)
Puis on l'exporte comme un fichier .war et deploye ce ficher sur le serveur que l'on a choisi

Pour le stockage de donnée, on pourrait l'associer à une base de donnée(JDBC), par example:
  
  Crée une base de donnée: 
      Class.forName("com.mysql.jdbc.Driver") ;
      
  Connecter à la base de donnée:
      String url = "jdbc:mysql://localhost:3306/test" ;
      String username = "root" ; 
      String password = "root" ; 
      try{ 
      Connection con = DriverManager.getConnection(url , username , password ) ; 
      }catch(SQLException se){
      System.out.println("Fail!"); se.printStackTrace() ; }  
