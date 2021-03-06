
public class Categoria 
{
	 private int    ID_CATEGORIA;
	 private String DESCRICAO;
	 private String PUBLICO_ALVO;
	 private String AREA;
	 private String FAIXA_ETARIA;
	 private int qtd;
	 
	 
	 public int getQtd() {
		return qtd;
	}
	public void setQtd(int qtd) {
		this.qtd = qtd;
	}
	public Categoria()
	 {
		 
	 }
	
	@Override
	public String toString() {
		return "Categoria [ID_CATEGORIA=" + ID_CATEGORIA + ", DESCRICAO=" + DESCRICAO + ", PUBLICO_ALVO=" + PUBLICO_ALVO
				+ ", AREA=" + AREA + ", FAIXA_ETARIA=" + FAIXA_ETARIA + ", qtd=" + qtd + "]";
	}
	public int getID_CATEGORIA() {
		return ID_CATEGORIA;
	}
	public void setID_CATEGORIA(int iD_CATEGORIA) {
		ID_CATEGORIA = iD_CATEGORIA;
	}
	public String getDESCRICAO() {
		return DESCRICAO;
	}
	public void setDESCRICAO(String dESCRICAO) {
		DESCRICAO = dESCRICAO;
	}
	public String getPUBLICO_ALVO() {
		return PUBLICO_ALVO;
	}
	public void setPUBLICO_ALVO(String pUBLICO_ALVO) {
		PUBLICO_ALVO = pUBLICO_ALVO;
	}
	public String getAREA() {
		return AREA;
	}
	public void setAREA(String aREA) {
		AREA = aREA;
	}
	public String getFAIXA_ETARIA() {
		return FAIXA_ETARIA;
	}
	public void setFAIXA_ETARIA(String fAIXA_ETARIA) {
		FAIXA_ETARIA = fAIXA_ETARIA;
	}	 
	 
}
