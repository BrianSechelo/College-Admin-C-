using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Connectiondb.connection();
            Connectiondb.ora = "DROP TABLE COURSE";
            Response.Write("Opened Connection");
            Connectiondb.query(Connectiondb.ora);
        }
        catch { 
        }

        Connectiondb.connection();
        Connectiondb.ora = "CREATE TABLE COURSE(NAME VARCHAR(50),CODE VARCHAR(50),LEVELLL VARCHAR(20),COST NUMBER)";
        Response.Write("DONE");
        Connectiondb.query(Connectiondb.ora);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            Connectiondb.connection();
            Connectiondb.ora = "DROP TABLE LECTURER";
            Response.Write("Opened Connection");
            Connectiondb.query(Connectiondb.ora);
        }
        catch { }
        
        Connectiondb.connection();
        Connectiondb.ora = "CREATE TABLE LECTURER(NAME VARCHAR(50),ID NUMBER,COURSE VARCHAR(20),CODE VARCHAR(20),CENTRE VARCHAR(50),LEVELLL VARCHAR(20))";
        Response.Write("ok");
        Connectiondb.query(Connectiondb.ora);
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            Connectiondb.connection();
            Connectiondb.ora = "drop table centre";
            Connectiondb.query(Connectiondb.ora);
        }
        catch
        { }
            Connectiondb.connection();
            Connectiondb.ora = "CREATE TABLE centre(ENTRYNO NUMBER,NAME VARCHAR(50),PHONE INT)";
            Response.Write("ok");
            Connectiondb.query(Connectiondb.ora);
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            Connectiondb.connection();
            Connectiondb.ora = "drop table STUDENTS";
            Connectiondb.query(Connectiondb.ora);
        }
        catch
        { }
            Connectiondb.connection();
            Connectiondb.ora = "CREATE TABLE STUDENTS(ENTRYNO INT,stdNo  VARCHAR(50),NAME VARCHAR(50),ADRESS  VARCHAR(50),BOOKINGREF  VARCHAR(50),BOOKINDATE VARCHAR(50),PHONE INT,COURSE VARCHAR(50),CODE VARCHAR(50),LEVELLL VARCHAR(50),COST NUMBER,STARTDATE VARCHAR(50),FINISHDATE VARCHAR(50),LECTURER VARCHAR(50),LECID NUMBER,CENTRE VARCHAR(50))";
            Response.Write("ok");
            Connectiondb.query(Connectiondb.ora);
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            Connectiondb.connection();
            Connectiondb.ora = "DROP TABLE LECA";
            Connectiondb.query(Connectiondb.ora);
        }
        catch
        { }
            Connectiondb.connection();
            Connectiondb.ora = "CREATE TABLE LECA(ID INT,NAME VARCHAR(50),COURSE VARCHAR(50),CODE VARCHAR(50),LEVELLL VARCHAR(50),CENTRE VARCHAR(50))";
            Response.Write("ok");
            Connectiondb.query(Connectiondb.ora);
        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            Connectiondb.connection();
            Connectiondb.ora = "DROP TABLE CENTREA";
            Connectiondb.query(Connectiondb.ora);
        }
        catch { }
        Connectiondb.connection();
        Connectiondb.ora = "CREATE TABLE CENTREA(CENTRE VARCHAR(50),CPHONE INT,COURSE VARCHAR(50),CODE VARCHAR(50),LECID INT,LECTURER VARCHAR(50),LEVELLL VARCHAR(50),CSIZE INT)";
        Response.Write("ok");
        Connectiondb.query(Connectiondb.ora);
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            Connectiondb.connection();
            Connectiondb.ora = "DROP TABLE USERS";
            Connectiondb.query(Connectiondb.ora);
        }

        catch { }
        Connectiondb.connection();
        Connectiondb.ora = "CREATE TABLE USERS(NAME VARCHAR(50),PASSWORD VARCHAR(50))";
        Response.Write("ok");
        Connectiondb.query(Connectiondb.ora);
        Connectiondb.connection();
        Connectiondb.ora = "INSERT INTO USERS(NAME,PASSWORD)VALUES('ADMIN','admin')";
        Connectiondb.query(Connectiondb.ora);
    }
}