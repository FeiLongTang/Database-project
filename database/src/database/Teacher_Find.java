package database;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.util.Vector;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;
import javax.swing.table.TableModel;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JScrollPane;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class Teacher_Find extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTable table;
	private JLabel name1;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Sql_connetcton.login_s("admin","admin");
					Teacher_Find frame = new Teacher_Find();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	private String[] name=new String[]{"���","�γ���","�ον�ʦ"};
	private void refresh(){
		String cc=textField.getText();
		Vector detail=Sql_connetcton.getPersons(cc); //ѧ��,����
		if(detail==null||detail.size()==0){
			JOptionPane.showMessageDialog(getParent(), "ѧ�Ŵ���,û�д���", "����", JOptionPane.ERROR_MESSAGE);
			return;
		}
		name1.setText((String) detail.get(1));
		
		Vector<Vector> ans=Sql_connetcton.teacherFind(cc);
		Vector<String> names=new Vector<String>();
		for(String s:name)names.add(s);
		TableModel tableModle=new DefaultTableModel(ans, names){
			public boolean isCellEditable(int row, int column){
                return false;}//��������༭
		};
		table.setModel(tableModle);
		TableColumn column = table.getColumnModel().getColumn(1); 
		column.setPreferredWidth(350);
		TableColumn column1 = table.getColumnModel().getColumn(0); 
		column1.setPreferredWidth(45);
	}
	/**
	 * Create the frame.
	 */
	public Teacher_Find() {
		setTitle("\u4EFB\u8BFE\u6559\u5E08\u67E5\u8BE2");
		
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		this.setResizable(false);
		this.setLocationRelativeTo(null);
		textField = new JTextField();
		textField.setBounds(56, 10, 96, 21);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel label = new JLabel("\u5B66\u53F7:");
		label.setBounds(24, 13, 54, 15);
		contentPane.add(label);
		
		final JButton button = new JButton("\u67E5\u8BE2");
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				refresh();
			}
		});
		button.setBounds(282, 9, 93, 23);
		contentPane.add(button);
		
		table=new JTable();
		JScrollPane scrollPane = new JScrollPane(table);
		scrollPane.setBounds(10, 37, 414, 214);
		contentPane.add(scrollPane);
		
		JLabel label_1 = new JLabel("\u59D3\u540D:");
		label_1.setBounds(158, 13, 54, 15);
		contentPane.add(label_1);
		
		name1 = new JLabel("");
		name1.setBounds(192, 13, 54, 15);
		contentPane.add(name1);
		textField.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				
				button.doClick();
				 
			}
		});
	}
}
