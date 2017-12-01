import oracle.sql.DATE;

public class Autor 
{
  private String CPF;
  private String NOMEA;
  private String NASCIMENTE;
  private char sexo;
  private String NACIONALIDADE;
  private String TELEFONE;
  private String EMAIL;
  
  public Autor()
  {
	  
  }
public String getCPF() {
	return CPF;
}
public void setCPF(String cPF) {
	CPF = cPF;
}
public String getNOMEA() {
	return NOMEA;
}
public void setNOMEA(String nOMEA) {
	NOMEA = nOMEA;
}
public String getNASCIMENTE() {
	return NASCIMENTE;
}
public void setNASCIMENTE(String nASCIMENTE) {
	NASCIMENTE = nASCIMENTE;
}
public char getSexo() {
	return sexo;
}
public void setSexo(char sexo) {
	this.sexo = sexo;
}
public String getNACIONALIDADE() {
	return NACIONALIDADE;
}
public void setNACIONALIDADE(String nACIONALIDADE) {
	NACIONALIDADE = nACIONALIDADE;
}
public String getTELEFONE() {
	return TELEFONE;
}
public void setTELEFONE(String tELEFONE) {
	TELEFONE = tELEFONE;
}
public String getEMAIL() {
	return EMAIL;
}
public void setEMAIL(String eMAIL) {
	EMAIL = eMAIL;
}
@Override
public String toString() {
	return "Autor [CPF=" + CPF + ", NOMEA=" + NOMEA + ", NASCIMENTE=" + NASCIMENTE + ", sexo=" + sexo
			+ ", NACIONALIDADE=" + NACIONALIDADE + ", TELEFONE=" + TELEFONE + ", EMAIL=" + EMAIL + "]";
}
   
}
