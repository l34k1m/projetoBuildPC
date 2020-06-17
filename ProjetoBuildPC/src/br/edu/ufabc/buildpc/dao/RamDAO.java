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
import br.edu.ufabc.buildpc.modelo.Ram;

public class RamDAO {
	private Connection connection;

	public RamDAO() {
		this.connection = new ConexaoBD().getConnection();
	}

	public void fechaConexao() {
		try {
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Ram> getLista() {
		List<Ram> memorias = new ArrayList<Ram>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("SELECT * FROM ram ORDER BY nome");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Ram memoria = new Ram();
				memoria.setIdRam(rs.getInt("idRam"));
				memoria.setNome(rs.getString("nome"));
				memoria.setSpeed(rs.getString("speed"));
				memoria.setTipo(rs.getString("tipo"));
				memoria.setModulos(rs.getString("modulos"));
				memoria.setTamanho(rs.getString("tamanho"));
				memoria.setPrice(rs.getFloat("price"));
				memorias.add(memoria);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return memorias;
	}

	public void insere(Ram ram) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("projeto");
		EntityManager manager = factory.createEntityManager();
		try {
			manager.getTransaction().begin();
			manager.persist(ram);
			manager.getTransaction().commit();
		} finally {
			if (manager.getTransaction().isActive())
				manager.getTransaction().rollback();
		}
		manager.close();
	}
}
