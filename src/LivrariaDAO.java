import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LivrariaDAO 
{
  private ConnectionClass conexao;
  
  public LivrariaDAO(String user, String senha)
  {
	  this.conexao = new  ConnectionClass(user, senha);
  }
  
  public ArrayList<Autor> SelecionaAutoresEmail(String sEmail) throws ClassNotFoundException
  {
	  try 
	  {
		  
	      ArrayList<Autor> listaRetorno = new ArrayList();
	      
          Autor autorLocal = new Autor(); 
          String sql = "select nomea, nacionalidade, email  from autor where email = ?";

          PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
           stmt.setString(1, sEmail);
           ResultSet rs = stmt.executeQuery();
           
           while (rs.next()) 
           {
        	   autorLocal.setNOMEA(rs.getString("nomea"));
        	   autorLocal.setNACIONALIDADE(rs.getString("NACIONALIDADE"));
        	   autorLocal.setEMAIL(rs.getString("email"));
               System.out.println(autorLocal.toString());
               listaRetorno.add(autorLocal);
           }
       
           rs.close();
           stmt.close();
           return listaRetorno;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return null;
   }

  }
  
  public ArrayList<Autor> SelecionaAutoresNacionalidades(String sNacionalidade1, String sNacionalidade2, String sNacionalidade3) throws ClassNotFoundException
  {
	  try 
	  {
	        
          ArrayList<Autor> listaRetorno = new ArrayList();
          
		  Autor autorLocal = new Autor(); 
          String sql = "select nomea, sexo, nacionalidade from autor where nacionalidade IN (?, ?, ?)";

           PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
           stmt.setString(1, sNacionalidade1);
           stmt.setString(2, sNacionalidade2);
           stmt.setString(3, sNacionalidade3);
           
           ResultSet rs = stmt.executeQuery();
           
           while (rs.next()) 
           {
        	   autorLocal.setNOMEA(rs.getString("nomea"));
        	   autorLocal.setNACIONALIDADE(rs.getString("NACIONALIDADE"));
        	   autorLocal.setSexo(rs.getString("SEXO").charAt(0));
        	   listaRetorno.add(autorLocal);
               System.out.println(autorLocal.toString());
           }
       
           rs.close();
           stmt.close();
           return listaRetorno;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return null;
   }
  }
  
  public ArrayList<Editora> SelecionaEditoraByDate(String sData, String sPais1, String sPais2) throws ClassNotFoundException
  {
	  try 
	  {
	        
          ArrayList<Editora> listaRetorno = new ArrayList();
		  Editora editoraLocal= new Editora(); 
          String sql = "select nomee, comeco from editora where comeco > ? and pais = ? or pais = ? order by nomee";

           PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
           stmt.setString(1, sData);
           stmt.setString(2, sPais1);
           stmt.setString(3, sPais2);
           
           ResultSet rs = stmt.executeQuery();
           
           while (rs.next()) 
           {
        	   
        	   editoraLocal.setNOMEE(rs.getString("nomee"));
        	   editoraLocal.setCOMECO(rs.getString("comeco"));
        	   listaRetorno.add(editoraLocal);
               System.out.println(editoraLocal.toString());
           }
       
           rs.close();
           stmt.close();
           return listaRetorno;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return null;
   }
	  
  }
  
  public ArrayList<Categoria> RetornaOcorrenciaPublicoAlvo() throws ClassNotFoundException
  {
	  int iRetorno = 0; 
	  try 
	  {
	      ArrayList<Categoria> listaRetorno =  new ArrayList();  
		  Categoria categoria = new Categoria(); 
          String sql = " select publico_alvo, COUNT(publico_alvo) as QTD from categoria group by PUBLICO_ALVO";
           PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
        
           
           ResultSet rs = stmt.executeQuery();
           
           while (rs.next()) 
           {
        	   
        	   categoria.setPUBLICO_ALVO(rs.getString("PUBLICO_ALVO"));
        	   categoria.setQtd(rs.getInt("QTD"));    	   
        	   listaRetorno.add(categoria);
        	   System.out.println(categoria.toString());
           }
       
           rs.close();
           stmt.close();
           return listaRetorno;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return null;
   }
	    
  }
  
  public ArrayList<Autor> RetornaOcorrencia() throws ClassNotFoundException
  { 
	  try 
	  {
	        
		  ArrayList<Autor> listRetorno = new ArrayList();
		  Autor autor = new Autor(); 
          String sql = "select distinct(sexo) as gen,  nomea from autor where sexo = 'M' order by nomea";
          PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
        
           
           ResultSet rs = stmt.executeQuery();
           
           while (rs.next()) 
           {
        	   autor.setSexo(rs.getString("GEN").charAt(0));
        	   autor.setNOMEA(rs.getString("NOMEA"));
        	   System.out.println(autor.toString());
        	   listRetorno.add(autor);
           }
       
           rs.close();
           stmt.close();
           return listRetorno;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return null;
   }
	    
  }
}
