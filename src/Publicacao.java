import java.sql.Date;

public class Publicacao 
{
  private int ID_PUBLICAO;
  private int livro;
  private Date DATA;
  private int EXEMPLARES;
  private double PRECO;
  
  public Publicacao()
  {
	  
  }
@Override
public String toString() {
	return "Publicacao [ID_PUBLICAO=" + ID_PUBLICAO + ", livro=" + livro + ", DATA=" + DATA + ", EXEMPLARES="
			+ EXEMPLARES + ", PRECO=" + PRECO + "]";
}
public int getID_PUBLICAO() {
	return ID_PUBLICAO;
}
public void setID_PUBLICAO(int iD_PUBLICAO) {
	ID_PUBLICAO = iD_PUBLICAO;
}
public int getLivro() {
	return livro;
}
public void setLivro(int livro) {
	this.livro = livro;
}
public Date getDATA() {
	return DATA;
}
public void setDATA(Date dATA) {
	DATA = dATA;
}
public int getEXEMPLARES() {
	return EXEMPLARES;
}
public void setEXEMPLARES(int eXEMPLARES) {
	EXEMPLARES = eXEMPLARES;
}
public double getPRECO() {
	return PRECO;
}
public void setPRECO(double pRECO) {
	PRECO = pRECO;
}
  
}
