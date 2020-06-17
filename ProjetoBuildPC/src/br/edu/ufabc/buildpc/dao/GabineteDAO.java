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
import br.edu.ufabc.buildpc.modelo.Gabinete;

public class GabineteDAO {

	private Connection connection;

	public GabineteDAO() {
		this.connection = new ConexaoBD().getConnection();
	}

	public void fechaConexao() {
		try {
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Gabinete> getLista() {
		List<Gabinete> gabinetes = new ArrayList<Gabinete>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("SELECT * FROM gabinete ORDER BY nome");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Gabinete gabinete = new Gabinete();
				gabinete.setIdGabinete(rs.getInt("idGabinete"));
				gabinete.setNome(rs.getString("nome"));
				gabinete.setClasse(rs.getString("classe"));
				gabinete.setMoboPadrao(rs.getString("moboPadrao"));
				gabinete.setSlotWater(rs.getString("slotWater"));
				gabinete.setAcrilico(rs.getString("acrilico"));
				gabinete.setPrice(rs.getFloat("price"));
				gabinetes.add(gabinete);
			}
			rs.close();
			stmt.close();
		} catch (SQLException
				e) {
			throw new RuntimeException(
					e);
		}
		return gabinetes;
	}
	
	public void insere(Gabinete gabinete) {
		/*
		String sql = "INSERT INTO gabinete (nome, classe, mobo_padrao, slot_water, acrilico, conexoes, price) VALUES (?,?,?,?,?,?,?)";
		try {
		PreparedStatement stmt = connection.prepareStatement(sql);
		
		stmt.setString(1, gabinete.getNome());
		stmt.setString(2, gabinete.getClasse());
		stmt.setString(3, gabinete.getMobo_padrao());
		stmt.setString(4, gabinete.getSlot_water());
		stmt.setString(5, gabinete.getAcrilico());
		stmt.setString(6, gabinete.getConexoes());
		stmt.setFloat(7, gabinete.getPrice());
		
		stmt.execute();
		stmt.close();
		} catch (SQLException e) {
		throw new RuntimeException(e);
		}
		*/
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("projeto");
		EntityManager manager = factory.createEntityManager();
		try {
			manager.getTransaction().begin();
			manager.persist(gabinete);
			manager.getTransaction().commit();
		} finally {
			if (manager.getTransaction().isActive())
				manager.getTransaction().rollback();
		}
		manager.close();
	}
	
}
