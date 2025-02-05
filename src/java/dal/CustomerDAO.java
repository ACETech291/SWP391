/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import model.Customer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import model.Role;

/**
 *
 * @author Nguyen Ba Hien
 */
public class CustomerDAO {
    
    private Connection connect;
    
    public List<Customer> getAllCustomer(){
        return null;
    }
    
    public void createAcc(Customer a){
        String sql = "INSERT INTO [dbo].[Customer]\n" +
"           ,[userName]\n" +
"           ,[password]\n" +
"           ,[phoneNumber]\n" +
"           ,[email]\n" +
"           ,[roleId])\n" +
"     VALUES\n" +
"           (?,?,?,?,?)";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setString(1, a.getUserName());
            ps.setString(2, a.getPassword());
            ps.setString(3, a.getPhoneNumber());
            ps.setString(4, a.getEmail());
            ps.setInt(5, a.getRole().getId());
            ps.executeUpdate();
        } catch (Exception e) {
            
        }
    }
    
    public Role getRoleById(int id) {
        String sql = "select * from role\n"
                + "where id = ?";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                Role role = new Role(rs.getInt("id"), rs.getString("roleName"));
                return role;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
//    public List<Customer> getListCustomer() {
//        List<Customer> listCustomer = new ArrayList<>();
//        String sql = "select *\n"
//                + "from Customer a join role r on a.roleId = r.id";
//        try {
//            PreparedStatement ps = connect.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Role role = new Role(rs.getInt(8), rs.getString(9));
//                listCustomer.add(new Customer(rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        role));
//            }
//        } catch (Exception e) {
//        }
//        return listCustomer;
//    }

//    public Customer getCustomer(String userName, String password) {
//        String sql = "select * from Account a join role r on a.roleId = r.id where a.userName = ? and [password]=?";
//        try {
//            PreparedStatement ps = connect.prepareStatement(sql);
//            ps.setString(1, userName);
//            ps.setString(2, password);
//            ResultSet rs = ps.executeQuery();
//            
//            while(rs.next()){
//                if(rs.getString(9)!= null){
//                     Role role = new Role(rs.getInt(8),
//                        rs.getString(9));
//                     return new Customer(rs.getString(1),
//                             rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4), 
//                        rs.getString(5),
//                        rs.getString(6),
//                             role);
//                }
//                if(rs.getString(9) == null){
//                    return null;
//                }
//                 
//            }
//            
//
//        } catch (Exception e) {
//        }
//        return null;
//
//    }
}

