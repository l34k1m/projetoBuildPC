package br.edu.ufabc.buildpc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "armazenamento")
public class Armazenamento {

	@Id
	@GeneratedValue
	private int idArmazenamento;

	@Column(name = "nome", nullable=false)
	private String nome;
	
	@Column(name = "formato")
	private String formato;
	
	@Column(name = "tipo")
	private String tipo;
	
	@Column(name = "capacidade")
	private String capacidade;
	
	@Column(name = "cache")
	private String cache;
	
	@Column(name = "price", nullable=false)
	private float price;

	public int getIdArmazenamento() {
		return idArmazenamento;
	}

	public void setIdArmazenamento(int idArmazenamento) {
		this.idArmazenamento = idArmazenamento;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getFormato() {
		return formato;
	}

	public void setFormato(String formato) {
		this.formato = formato;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getCapacidade() {
		return capacidade;
	}

	public void setCapacidade(String capacidade) {
		this.capacidade = capacidade;
	}

	public String getCache() {
		return cache;
	}

	public void setCache(String cache) {
		this.cache = cache;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
}
