package br.edu.ufabc.buildpc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "motherboard")
public class Motherboard {
	@Id
	@GeneratedValue
	private int idMotherboard;

	@Column(name = "nome", nullable = false)
	private String nome;

	@Column(name = "socket")
	private String socket;

	@Column(name = "formFactor")
	private String formFactor;

	@Column(name = "ramSlots")
	private int ramSlots;

	@Column(name = "maxRam")
	private String maxRam;

	@Column(name = "price", nullable = false)
	private float price;

	public int getIdMotherboard() {
		return idMotherboard;
	}

	public void setIdMotherboard(int idMotherboard) {
		this.idMotherboard = idMotherboard;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSocket() {
		return socket;
	}

	public void setSocket(String socket) {
		this.socket = socket;
	}

	public String getFormFactor() {
		return formFactor;
	}

	public void setFormFactor(String formFactor) {
		this.formFactor = formFactor;
	}

	public int getRamSlots() {
		return ramSlots;
	}

	public void setRamSlots(int ramSlots) {
		this.ramSlots = ramSlots;
	}

	public String getMaxRam() {
		return maxRam;
	}

	public void setMaxRam(String maxRam) {
		this.maxRam = maxRam;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
}
