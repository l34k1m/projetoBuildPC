package br.edu.ufabc.buildpc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.edu.ufabc.buildpc.jdbc.ConexaoBD;
import br.edu.ufabc.buildpc.modelo.Cpu;

public class CpuDAO {
	private Connection connection;

	public CpuDAO() {
		this.connection = new ConexaoBD().getConnection();
	}

	public void fechaConexao() {
		try {
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Cpu> getLista() {
		List<Cpu> cpus = new ArrayList<Cpu>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("SELECT * FROM cpu ORDER BY nome");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Cpu cpu = new Cpu();
				cpu.setIdCpu(rs.getInt("idCpu"));
				cpu.setNome(rs.getString("nome"));
				cpu.setSpeed(rs.getString("speed"));
				cpu.setSocket(rs.getString("socket"));
				cpu.setCores(rs.getLong("cores"));
				cpu.setTdp(rs.getString("tdp"));
				cpu.setPrice(rs.getFloat("price"));
				cpus.add(cpu);
			}
			rs.close();
			stmt.close();
		} catch (SQLException
				e) {
			throw new RuntimeException(
					e);
		}
		return cpus;
	}
	
	public void insere(Cpu cpu) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("projeto");
		EntityManager manager = factory.createEntityManager();
		try {
			manager.getTransaction().begin();
			manager.persist(cpu);
			manager.getTransaction().commit();
		} finally {
			if (manager.getTransaction().isActive())
				manager.getTransaction().rollback();
		}
		manager.close();
	}
}
