import java.sql.Date;

public class Editora 
{
  private int ID_EDITORA;
  private String NOMEE;
  private String Email;
  private String COMECO;
  private String pais;
  
  public Editora()
  {
	  
  }
@Override
public String toString() {
	return "Editora [ID_EDITORA=" + ID_EDITORA + ", NOMEE=" + NOMEE + ", Email=" + Email + ", COMECO=" + COMECO
			+ ", pais=" + pais + "]";
}
public int getID_EDITORA() {
	return ID_EDITORA;
}
public void setID_EDITORA(int iD_EDITORA) {
	ID_EDITORA = iD_EDITORA;
}
public String getNOMEE() {
	return NOMEE;
}
public void setNOMEE(String nOMEE) {
	NOMEE = nOMEE;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getCOMECO() {
	return COMECO;
}
public void setCOMECO(String cOMECO) {
	COMECO = cOMECO;
}
public String getPais() {
	return pais;
}
public void setPais(String pais) {
	this.pais = pais;
}
  
}
