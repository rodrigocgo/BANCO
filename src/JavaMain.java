import java.util.Scanner;

public class JavaMain {

	public static void main(String[] args) throws ClassNotFoundException 
	{
		String sUsuario,sSenha;
		Scanner keyboard = new Scanner(System.in);
		System.out.println("Bem-vindo a Livraria, digite 0 para sair!");
		
		System.out.println("Digite seu Usuario: ");
		sUsuario = keyboard.nextLine();
		System.out.println("Digite sua  Senha: ");
		sSenha = keyboard.nextLine();
		
		LivrariaDAO livraria = new LivrariaDAO("BF203186","BF203186");
		int entrada = 0; 
	    boolean bSair = true;
		while(bSair)
		{
		  
		  System.out.println("Digite 1 para consulta autor por Email\nDigite 2 a nacionalidades dos autores\nDigite 3 para nacionalidade de autores com data de lancamento\nDigite 4 para ocorrencia de publico alvo\nDigite 5 para ver autores de determinado sexo\n");
		  entrada = keyboard.nextInt();	   
		  String sEmail,sPais1,sPais2,sPais3,sData;
		  switch(entrada)
		  {
		    case 1:
		    	System.out.println("digite o email do autor");
		    	Scanner keyboard1 = new Scanner(System.in);
		    	sEmail = keyboard1.nextLine();
		    	livraria.SelecionaAutoresEmail(sEmail);
		    	break;
		    case 2:
		    	System.out.println("digite a nacionalidade 1");
		    	Scanner keyboard2 = new Scanner(System.in);
		    	sPais1 = keyboard2.nextLine();
		    	
		    	System.out.println("digite a nacionalidade 1");
		    	Scanner keyboard3 = new Scanner(System.in);
		    	sPais2 = keyboard3.nextLine();
		    	
		    	System.out.println("digite a nacionalidade 1");
		    	Scanner keyboard4 = new Scanner(System.in);
		    	sPais3 = keyboard3.nextLine();
		    	
		    	livraria.SelecionaAutoresNacionalidades(sPais1, sPais2, sPais3);
		    	break;
		    case 3:
		    	System.out.println("digite a nacionalidade 1");
		    	Scanner keyboard5 = new Scanner(System.in);
		    	sPais1 = keyboard5.nextLine();
		    	
		    	sData = keyboard5.nextLine();
		    	livraria.RetornaDataOrdernadaNacionalidadeEdataLimite(sPais1, sData);
		        break;
		    case 4:
		    	livraria.RetornaOcorrenciaPublicoAlvo();
		    	break;
		    case 5:
		    	livraria.RetornaOcorrencia();
		    	break;
		    case 6:
		    	System.out.println("digite a nacionalidade 1");
		    	Scanner keyboard9 = new Scanner(System.in);
		    	sPais1 = keyboard9.nextLine();
		    	
		    	System.out.println("digite a nacionalidade 1");
		    	Scanner keyboard10 = new Scanner(System.in);
		    	sPais2 = keyboard10.nextLine();
		    	
		    	System.out.println("digite a data ");
		    	Scanner keyboard11 = new Scanner(System.in);
		    	sData = keyboard11.nextLine();
		    	
		    	livraria.SelecionaEditoraByDate(sData, sPais1, sPais2);
		    	break;
		    
		    default: bSair = false;break;
		  }
		 
		}
		
		System.out.println("Saindo...");
	}

}
