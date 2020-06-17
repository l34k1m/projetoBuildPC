package br.edu.ufabc.buildpc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "gpu")
public class Gpu {

	@Id
	@GeneratedValue
	private int idGpu;

	@Column(name = "nome", nullable = false)
	private String nome;

	@Column(name = "chipset")
	private String chipset;

	@Column(name = "memoria")
	private String memoria;

	@Column(name = "clock")
	private String clock;

	@Column(name = "price", nullable = false)
	private float price;

	public int getIdGpu() {
		return idGpu;
	}

	public void setIdgpu(int idGpu) {
		this.idGpu = idGpu;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getChipset() {
		return chipset;
	}

	public void setChipset(String chipset) {
		this.chipset = chipset;
	}

	public String getMemoria() {
		return memoria;
	}

	public void setMemoria(String memoria) {
		this.memoria = memoria;
	}

	public String getClock() {
		return clock;
	}

	public void setClock(String clock) {
		this.clock = clock;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
