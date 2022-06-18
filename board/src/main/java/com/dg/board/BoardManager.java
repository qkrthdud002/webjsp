package com.dg.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class BoardManager {

    public Connection connect() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/b-21", "root", "1234");
        return con;
    }

    //1개 사용 위치
    public List<Board> doselect(){
        List<Board> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = connect();
            pstmt = con.prepareStatement("select * from board order by idx desc");
            rs = pstmt.executeQuery();
            while(rs.next()){
                Board board = new Board();
                board.setIdx(rs.getInt("idx"));
                board.setContent(rs.getString("content"));
                board.setCount(rs.getInt("count"));
                board.setEmail(rs.getString("email"));
                board.setName(rs.getString("name"));
                board.setTitle(rs.getString("title"));
                board.setWdate(rs.getString("wdate"));
                board.setPhone(rs.getString("phone"));
                list.add(board);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }finally {

        }
        return null;
    }

    public boolean doinsert(Board board){
        Connection con = null;
        PreparedStatement pstmt = null;
        try{
            con = connect();
            pstmt = con.prepareStatement("insert into board " +
                    "(name, title, content, wdate)" +
                    " values " +
                    "(?,?,?,?)");
            pstmt.setString(1,board.getName());
            pstmt.setString(2, board.getTitle());
            pstmt.setString(3, board.getContent());
            pstmt.setString(4, LocalDateTime.now().toString());
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        return true;
    }

    public Board doselectrow(int idx){
        Board board = new Board();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = connect();
            pstmt = con.prepareStatement("select * from board where idx = ?");
            pstmt.setInt(1, idx);
            rs = pstmt.executeQuery();
            while(rs.next()){
                board.setIdx(rs.getInt("idx"));
                board.setContent(rs.getString("content"));
                board.setCount(rs.getInt("count"));
                board.setEmail(rs.getString("email"));
                board.setName(rs.getString("name"));
                board.setTitle(rs.getString("title"));
                board.setWdate(rs.getString("wdate"));
                board.setPhone(rs.getString("phone"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {

        }
        return board;
    }

    public boolean dodelete(int idx){
        Connection con = null;
        PreparedStatement pstmt = null;
        try{
            con = connect();
            pstmt = con.prepareStatement("delete from board where idx=?");
            pstmt.setInt(1, idx);
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public void doupdate(Board board, int idx) throws Exception{
        Connection con = null;
        PreparedStatement pstmt = null;

        try{
            con = connect();
            pstmt = con.prepareStatement("update board set title = ?, content = ?," +
                    " name = ? where idx = ?");
            pstmt.setString(1,board.getTitle());
            pstmt.setString(2,board.getContent());
            pstmt.setString(3,board.getName());
            pstmt.setInt(4, idx);
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

//    public List<Board> doSearch(Board board) throws Exception{
//        Connection con = null;
//        PreparedStatement pstmt = null;
//
//        try{
//            con = connect();
//            pstmt = con.prepareStatement("select count(idx) as count from board where "
//                    + board.getSearchWord()+ "like ?");
//            pstmt.setString(1, board.getTitle());
//            pstmt.setString(2, board.getName());
////            pstmt.setInt(3, idx);
//            pstmt.executeUpdate();
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        return null;
//    }

}
