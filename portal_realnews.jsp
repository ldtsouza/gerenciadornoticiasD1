<%@ page import ="java.util.Scanner" %>   
<%@ page import = " java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %> 
<%@ page import =" model.Noticia"%>
<%@  page import="service.NoticiaService"%>
<%@ page import =" model.Comentario"%>
<%@  page import="service.ComentarioService"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Portal real News</title>
</head>
<body>


 <h1> Portal Real News &#127760;</h1>
 
 <p> Prova D1 &#128512; Aluna: Laudilene Souza - RA 819157991 </p>

<p> Hoje: <%= new Date () %> </p> 

<div>
         
<%
    ArrayList<Noticia>lista;
    NoticiaService ps = new NoticiaService();
    lista = ps.listarNoticia();

    for (Noticia n: lista) { 

%>  
       <div> 
     
      
       <p type=\"hidden\" name='id_noticia'  value ='"
											+ n.getId() + "'>
       <%= n.getDescricao() %>  
       <br>
       <%= n.getTitulo() %> 
       <br>
        <%= n.getTexto() %> 
        <br>
    
  				<form method="post"  action="CadastrarComentario.do">
     
   				  <h5> 
    			  <input type="hidden" name="id_comentario" /> 
    			  Comente Aqui:<input type="text" name="texto_comentario" /> <br>
    			  <br>
    			  Nome: <input type="text" name="nome_comentario" /> <br>
    			  <br>
     
    					 <input type="submit"  value="Comentar"> 
     					<input type="reset"  value="Limpar">
    			  </h5>
    		     
                   </form>
                    
       
      
    </div>
       
   </div> 


<% } %>



</body>
</html>