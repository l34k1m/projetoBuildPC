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
import br.edu.ufabc.buildpc.modelo.Gpu;

public class GpuDAO {

	private Connection connection;

	public GpuDAO() {
		this.connection = new ConexaoBD().getConnection();
	}
	
	public void fechaConexao() {
		try {
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Gpu> getLista() {
		List<Gpu> gpus = new ArrayList<Gpu>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("SELECT * FROM gpu ORDER BY clock");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Gpu gpu = new Gpu();
				gpu.setIdgpu(rs.getInt("idGpu"));
				gpu.setNome(rs.getString("nome"));
				gpu.setChipset(rs.getString("chipset"));
				gpu.setMemoria(rs.getString("memoria"));
				gpu.setClock(rs.getString("clock"));
				gpu.setPrice(rs.getFloat("price"));
				gpus.add(gpu);
			}
			rs.close();
			stmt.close();
		} catch (SQLException
				e) {
			throw new RuntimeException(
					e);
		}
		return gpus;
	}
	
	public void insere(Gpu gpu) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("projeto");
		EntityManager manager = factory.createEntityManager();
		try {
			manager.getTransaction().begin();
			manager.persist(gpu);
			manager.getTransaction().commit();
		} finally {
			if (manager.getTransaction().isActive())
				manager.getTransaction().rollback();
		}
		manager.close();
	}
}
