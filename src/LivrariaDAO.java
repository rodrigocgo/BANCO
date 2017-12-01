import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LivrariaDAO 
{
  private ConnectionClass conexao;
  
  public LivrariaDAO(String user, String senha)
  {
	  this.conexao = new  ConnectionClass(user, senha);
  }
  
  public Autor SelecionaAutoresEmail(String sEmail) throws ClassNotFoundException
  {
	  try 
	  {
	        
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
           }
       
           rs.close();
           stmt.close();
           return autorLocal;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return null;
   }

  }
  
  public Autor SelecionaAutoresNacionalidades(String sNacionalidade1, String sNacionalidade2, String sNacionalidade3) throws ClassNotFoundException
  {
	  try 
	  {
	        
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
               System.out.println(autorLocal.toString());
           }
       
           rs.close();
           stmt.close();
           return autorLocal;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return null;
   }
  }
  
  public Editora SelecionaEditoraByDate(String sData, String sPais1, String sPais2) throws ClassNotFoundException
  {
	  try 
	  {
	        
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
               System.out.println(editoraLocal.toString());
           }
       
           rs.close();
           stmt.close();
           return editoraLocal;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return null;
   }
	  
  }
  
  public int RetornaOcorrenciaPublicoAlvo() throws ClassNotFoundException
  {
	  int iRetorno = 0; 
	  try 
	  {
	        
		  Categoria categoria = new Categoria(); 
          String sql = " select publico_alvo, COUNT(publico_alvo) as QTD from categoria group by PUBLICO_ALVO";
           PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
        
           
           ResultSet rs = stmt.executeQuery();
           
           while (rs.next()) 
           {
        	   
        	   String sPublico = rs.getString("PUBLICO_ALVO");
        	   iRetorno = rs.getInt("QTD");    	   
        	   System.out.println("Publico_ALVO = ["+ sPublico+"] " +"quantidade = [" + iRetorno + "]");
           }
       
           rs.close();
           stmt.close();
           return iRetorno;
       } catch (SQLException e) {
           System.out.println(e.getMessage());
    
       return -1;
   }
	    
  }
}
