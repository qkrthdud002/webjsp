package com.dg.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//getter setter
//toString
//constructor-생성자
public class Board {

    //기본 생성자
    public Board(){

    }

    @Override
    public String toString() {
        return "Board{" +
                "searchWord" + searchWord +
                ",idx=" + idx +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", name='" + name + '\'' +
                ", wdate='" + wdate + '\'' +
                ", count=" + count +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    public Board(String searchWord, int idx, String title, String content, String name, String wdate, int count, String phone, String email) {
        this.searchWord = searchWord;
        this.idx = idx;
        this.title = title;
        this.content = content;
        this.name = name;
        this.wdate = wdate;
        this.count = count;
        this.phone = phone;
        this.email = email;
    }

    public String getSearchWord() {
        return searchWord;
    }

    public void setSearchWord(String searchWord) {
        this.searchWord = searchWord;
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getWdate() {
        return wdate;
    }

    public void setWdate(String wdate) {
        this.wdate = wdate;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private String searchWord;
    private int idx;
    private String title;
    private String content;
    private String name;
    private String wdate;
    private int count;
    private String phone;
    private String email;
}
