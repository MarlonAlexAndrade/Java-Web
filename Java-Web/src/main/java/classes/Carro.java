package classes;

public class Carro {
		//Atributos da classe armazem valores
		private int id;
		private String placa;
		private String modelo;
		
		public Carro(int id, String placa, String modelo) {
			this.placa = placa;
			this.modelo = modelo;
			this.id = id;
		}
		
		public Carro(String placa, String modelo) {
			this.placa = placa;
			this.modelo = modelo;
		}
		
		public String toString() {
			return "Placa: " + this.placa + "Modelo: " + this.modelo; 
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getPlaca() {
			return placa;
		}

		public void setPlaca(String placa) {
			this.placa = placa;
		}

		public String getModelo() {
			return modelo;
		}

		public void setModelo(String modelo) {
			this.modelo = modelo;
		}
		
		
}
