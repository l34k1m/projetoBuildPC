package br.edu.ufabc.buildpc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cpu")
public class Cpu {
	@Id
	@GeneratedValue
	private int idCpu;

	@Column(name = "nome", nullable=false)
	private String nome;

	@Column(name = "speed")
	private String speed;

	@Column(name="socket")
	private String socket;
	
	@Column(name = "cores")
	private Long cores;

	@Column(name = "tdp")
	private String tdp;

	@Column(name = "price", nullable=false)
	private float price;

	public int getIdCpu() {
		return idCpu;
	}

	public void setIdCpu(int idCpu) {
		this.idCpu = idCpu;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSpeed() {
		return speed;
	}

	public void setSpeed(String speed) {
		this.speed = speed;
	}

	public String getSocket() {
		return socket;
	}

	public void setSocket(String socket) {
		this.socket = socket;
	}

	public Long getCores() {
		return cores;
	}

	public void setCores(Long cores) {
		this.cores = cores;
	}

	public String getTdp() {
		return tdp;
	}

	public void setTdp(String tdp) {
		this.tdp = tdp;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	
}
