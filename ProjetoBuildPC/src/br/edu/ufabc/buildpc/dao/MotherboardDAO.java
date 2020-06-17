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
import br.edu.ufabc.buildpc.modelo.Motherboard;

public class MotherboardDAO {
	private Connection connection;

	public MotherboardDAO() {
		this.connection = new ConexaoBD().getConnection();
	}

	public void fechaConexao() {
		try {
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Motherboard> getLista() {
		List<Motherboard> mobos = new ArrayList<Motherboard>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("SELECT * FROM motherboard ORDER BY nome");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Motherboard mobo = new Motherboard();
				mobo.setIdMotherboard(rs.getInt("idMotherboard"));
				mobo.setNome(rs.getString("nome"));
				mobo.setSocket(rs.getString("socket"));
				mobo.setFormFactor(rs.getString("formFactor"));
				mobo.setRamSlots(rs.getInt("ramSlots"));
				mobo.setMaxRam(rs.getString("maxRam"));
				mobo.setPrice(rs.getFloat("price"));
				mobos.add(mobo);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return mobos;
	}

	public void insere(Motherboard mobo) {
		// System.out.println("Chegou aqui");
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("projeto");
		EntityManager manager = factory.createEntityManager();
		try {
			manager.getTransaction().begin();
			manager.persist(mobo);
			manager.getTransaction().commit();
		} finally {
			if (manager.getTransaction().isActive())
				manager.getTransaction().rollback();
		}
		manager.close();
	}
}
