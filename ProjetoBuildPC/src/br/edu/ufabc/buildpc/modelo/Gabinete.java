package br.edu.ufabc.buildpc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "gabinete")
public class Gabinete {

	@Id
	@GeneratedValue
	private int idGabinete;

	@Column(name = "nome", nullable=false)
	private String nome;

	@Column(name = "classe")
	private String classe; // Small Tower, Mid Tower, Full Tower

	@Column(name = "moboPadrao")
	private String moboPadrao; // ATX, ITX

	@Column(name = "slotWater")
	private String slotWater; // 2x120mm x2, 2x140mm, 2x 140mm x2;

	@Column(name = "acrilico")
	private String acrilico; // Sim, Não

	@Column(name = "conexoes")
	private String conexoes; // Sim, Não

	@Column(name = "price", nullable=false)
	private float price;

	public int getIdGabinete() {
		return idGabinete;
	}

	public void setIdGabinete(int idGabinete) {
		this.idGabinete = idGabinete;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getClasse() {
		return classe;
	}

	public void setClasse(String classe) {
		this.classe = classe;
	}

	public String getMoboPadrao() {
		return moboPadrao;
	}

	public void setMoboPadrao(String moboPadrao) {
		this.moboPadrao = moboPadrao;
	}

	public String getSlotWater() {
		return slotWater;
	}

	public void setSlotWater(String slotWater) {
		this.slotWater = slotWater;
	}

	public String getAcrilico() {
		return acrilico;
	}

	public void setAcrilico(String acrilico) {
		this.acrilico = acrilico;
	}

	public String getConexoes() {
		return conexoes;
	}

	public void setConexoes(String conexoes) {
		this.conexoes = conexoes;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
