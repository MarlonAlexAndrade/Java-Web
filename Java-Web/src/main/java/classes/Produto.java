package classes;



public class Produto {
	private String descricao;
	private Double preco;

	// Construtor padrao
	public Produto(){
		
	}
	
	//Construtor Sobrecarregado - Inicializa valores para o objeto
	public Produto(String descricao, Double preco) {
		setPreco(preco);
		setDescricao(descricao);
	}
	
	public Double getPreco() {
		return this.preco;
	}
	
	public void setPreco(Double preco) {
		if(preco < 0) {
			throw new RuntimeException("Preço não pode ser negativo");
		}
		this.preco = preco;
	}
	
	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
