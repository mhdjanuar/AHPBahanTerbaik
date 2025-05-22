package application.models;

import java.util.List;
import javax.swing.table.AbstractTableModel;public class CandidateTableModel extends AbstractTableModel {
    List<CandidateModel> candidates;
    
    public CandidateTableModel(List<CandidateModel> candidates) {
        this.candidates = candidates;
    }

    @Override
    public int getRowCount() {
        return candidates.size();
    }
    
    @Override
    public String getColumnName(int column) {
        switch (column) {
            case 0:
                return "ID";
            case 1:
                return "Nama";
            case 2:
                return "Deskripsi";
            case 3:
                return "Nilai Penampilan";
            case 4:
                return "Kenyamanan";
            case 5:
                return "Ketahanan";
            case 6:
                return "Perawatan";
            default:
                return null;
        }
    }

    @Override
    public int getColumnCount() {
        return 7;
    }

    @Override
    public Object getValueAt(int row, int column) {
        switch (column) {
            case 0:
                return candidates.get(row).getId();
            case 1:
                return candidates.get(row).getName();
            case 2:
                return candidates.get(row).getDescription();
            case 3:
                return candidates.get(row).getAppearanceScore();
            case 4:
                return candidates.get(row).getComfortScore();
            case 5:
                return candidates.get(row).getDurabilityScore();
            case 6:
                return candidates.get(row).getMaintenanceScore();
            default:
                return null;
        }
    }
}