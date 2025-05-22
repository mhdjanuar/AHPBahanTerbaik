/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package application.daoimpl;

import application.dao.CandidateDao;
import application.models.CandidateModel;
import application.utils.DatabaseUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mahasiswa unindra 
 */
public class CandidateDaoImpl implements CandidateDao {
    private final Connection dbConnection;
    private PreparedStatement pstmt;
    private ResultSet resultSet;
    private String query;
    
    public CandidateDaoImpl(){
        dbConnection = DatabaseUtil.getInstance().getConnection();
    }
        
    @Override
    public int insertOne(CandidateModel candidate) {
        try {
            query = "INSERT INTO candidates(name,description,appearance_score,comfort_score,durability_score,maintenance_score) "
                    + "VALUES (?,?,?,?,?,?)";
            
            pstmt = dbConnection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, candidate.getName());
            pstmt.setString(2, candidate.getDescription());
            pstmt.setInt(3, candidate.getAppearanceScore());
            pstmt.setInt(4, candidate.getComfortScore());
            pstmt.setInt(5, candidate.getDurabilityScore());
            pstmt.setInt(6, candidate.getMaintenanceScore());
            
            return pstmt.executeUpdate();
	} catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        } finally {
            closeStatement();
        }
    }
    
    private void closeStatement() {
        try {
            if(pstmt != null){
                pstmt.close();
                pstmt = null;
            }
            if(resultSet != null){
                resultSet.close();
                resultSet = null;
            }   
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<CandidateModel> findAll() {
        try {
            query = "SELECT * FROM candidates";

            pstmt = dbConnection.prepareStatement(query);
            resultSet = pstmt.executeQuery();

            List<CandidateModel> candidates = new ArrayList<>();

            while (resultSet.next()) {
                CandidateModel candidate = new CandidateModel();
                candidate.setId(resultSet.getInt("id"));
                candidate.setName(resultSet.getString("name"));
                candidate.setDescription(resultSet.getString("description"));
                candidate.setAppearanceScore(resultSet.getInt("appearance_score"));
                candidate.setComfortScore(resultSet.getInt("comfort_score"));
                candidate.setDurabilityScore(resultSet.getInt("durability_score"));
                candidate.setMaintenanceScore(resultSet.getInt("maintenance_score"));
                candidates.add(candidate);
            }

            return candidates;
        } catch (SQLException e) {
            // e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeStatement();
        }
    }

    @Override
    public int delete(int id) {
        try {
            query = "DELETE FROM candidates WHERE id = ?";
            
            pstmt = dbConnection.prepareStatement(query);
            pstmt.setInt(1, id);
            
            return pstmt.executeUpdate();
	} catch (SQLException e) {
            // e.printStackTrace();
            throw new RuntimeException(e);
        }finally{
            closeStatement();
        }
    }

    @Override
    public int update(CandidateModel candidate) {
        try {
            query = "UPDATE candidates " 
                    + "SET name = ?, description = ?, appearance_score = ?, comfort_score = ?, durability_score = ?, maintenance_score = ? "
                    + "WHERE id = ?";

            pstmt = dbConnection.prepareStatement(query);
            pstmt.setString(1, candidate.getName());
            pstmt.setString(2, candidate.getDescription());
            pstmt.setInt(3, candidate.getAppearanceScore());
            pstmt.setInt(4, candidate.getComfortScore());
            pstmt.setInt(5, candidate.getDurabilityScore());
            pstmt.setInt(6, candidate.getMaintenanceScore());
            pstmt.setInt(7, candidate.getId());
            
            return pstmt.executeUpdate();
	} catch (SQLException e) {
            // e.printStackTrace();
            System.out.println(e);
            throw new RuntimeException(e);
        }finally{
            closeStatement();
        }
    }

    @Override
    public CandidateModel findOneById(int id) {
                try {
            query = "SELECT * FROM candidates " 
                    + "WHERE id = ?";
            
            pstmt = dbConnection.prepareStatement(query);
            pstmt.setInt(1, id);
            
            resultSet = pstmt.executeQuery();
            if(resultSet.next()){
                CandidateModel candidateFound = new CandidateModel();
                candidateFound.setId(resultSet.getInt("id"));
                candidateFound.setName(resultSet.getString("name"));
                candidateFound.setDescription(resultSet.getString("description"));
                candidateFound.setLeadershipScore(resultSet.getInt("appearance_score"));
                candidateFound.setKnowledgeScore(resultSet.getInt("comfort_score"));
                candidateFound.setTechnicalSkillScore(resultSet.getInt("durability_score"));
                candidateFound.setAdvancedSkillScore(resultSet.getInt("maintenance_score"));
                return candidateFound;
            }
            return null;
	} catch (SQLException e) {
            // e.printStackTrace();
            throw new RuntimeException(e);
        }finally{
            closeStatement();
        }
    }
    
}
