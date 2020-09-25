package dao;

import model.Aluno;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class AlunoDAO {
	
	private Connection conexao;
	private PreparedStatement pst;
	private Statement st;
	private ResultSet result;
	private ArrayList<Aluno> alunos = new ArrayList<>();
	
	public AlunoDAO() {
		conexao = new ConnectionFactory().getConexao();
	}
	
	public void inserir(Aluno aluno) {
		String query = "INSERT INTO alunos (nome, idade) VALUES (?, ?)";
		try {
			pst = conexao.prepareStatement(query);
			pst.setString(1, aluno.getNome());
			pst.setInt(2, aluno.getIdade());
			pst.execute();
			pst.close();
		}catch(Exception erro) {
			throw new RuntimeException("inserir() error: "  + erro);
		}
	}
	
	public void alterar(Aluno aluno) {
		String query = "UPDATE alunos SET nome = ?, idade = ? WHERE id_aluno = ?";
		try {
			pst = conexao.prepareStatement(query);
			pst.setString(1, aluno.getNome());
			pst.setInt(2, aluno.getIdade());
			pst.setInt(3, aluno.getId_aluno());
			pst.execute();
			pst.close();
		}catch(Exception erro) {
			throw new RuntimeException("alterar() error: "  + erro);
		}
	}
	
	public void deletar(int id) {
		String query = "DELETE FROM alunos WHERE id_aluno = " + id;
		try {
			st = conexao.createStatement();
			st.execute(query);
			st.close();
		}catch(Exception erro) {
			throw new RuntimeException("deletar() error: "  + erro);
		}
	}
	
	
	public ArrayList<Aluno> getAllAlunos(){
		String query = "SELECT * FROM alunos";
		try {
			st = conexao.createStatement();
			result = st.executeQuery(query);
			while(result.next()) {
				Aluno aluno = new Aluno();
				aluno.setId_aluno(result.getInt("id_aluno"));
				aluno.setNome(result.getString("nome"));
				aluno.setIdade(result.getInt("idade"));
				
				alunos.add(aluno);
			}
		}catch(Exception erro) {
			throw new RuntimeException("getAllAlunos() error: "  + erro);
		}
		
		return alunos;
	}
	
}
