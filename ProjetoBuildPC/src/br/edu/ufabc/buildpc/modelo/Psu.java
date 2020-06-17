package br.edu.ufabc.buildpc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "psu")
public class Psu {

	@Id
	@GeneratedValue
	private int idPsu;

	@Column(name = "nome", nullable=false)
	private String nome;

	@Column(name = "potencia")
	private String potencia;

	@Column(name = "padrao")
	private String padrao; // ATX, "ITX", etc

	@Column(name = "eightyPlus")
	private String eightyPlus; // Silver, Gold, Platinum

	@Column(name = "modular")
	private String modular; // Sim, Não

	@Column(name = "price", nullable=false)
	private float price;
	
	public int getIdPsu() {
		return idPsu;
	}

	public void setIdPsu(int idPsu) {
		this.idPsu = idPsu;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPotencia() {
		return potencia;
	}

	public void setPotencia(String potencia) {
		this.potencia = potencia;
	}

	public String getPadrao() {
		return padrao;
	}

	public void setPadrao(String padrao) {
		this.padrao = padrao;
	}

	public String getEightyPlus() {
		return eightyPlus;
	}

	public void setEightyPlus(String eightyPlus) {
		this.eightyPlus = eightyPlus;
	}

	public String getModular() {
		return modular;
	}

	public void setModular(String modular) {
		this.modular = modular;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
