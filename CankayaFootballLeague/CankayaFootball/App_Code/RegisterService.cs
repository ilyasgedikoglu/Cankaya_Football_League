﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "RegisterService" in code, svc and config file together.
public class RegisterService : IRegisterService
{
    public Admin adminRegister(string name, string surName, string email, string password, string userName, string supportedTeamId)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        Admin a = new Admin();

        a.Name = name;
        a.Surname = surName;
        a.Email = email;
        a.Password = HashPassword(password);
        a.UserName = userName;
        a.SupportedTeamId = Convert.ToInt32(supportedTeamId);
        a.IsActive = true;
        _db.Admins.Add(a);

        _db.SaveChanges();

        return a;
    }

    public void DoWork()
    {
    }

    public Supporter supporterRegister(string name, string surName, string email, string password, string userName, string supportedTeamId)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        Supporter s = new Supporter();

        s.Name = name;
        s.SurName = surName;
        s.Email = email;
        s.Password = HashPassword(password);
        s.UserName = userName;
        s.SupportedTeamId = Convert.ToInt32(supportedTeamId);
        s.isActive = true;
        s.isApproval = false;
        _db.Supporters.Add(s);
        _db.SaveChanges();

        return s;
    }

    public static string HashPassword(string password) //Takes a string and creates hash of the string
    {
        //STEP 1 Create the salt value with a cryptographic PRNG:

        byte[] salt;
        new System.Security.Cryptography.RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);

        //STEP 2 Create the Rfc2898DeriveBytes and get the hash value:

        var pbkdf2 = new System.Security.Cryptography.Rfc2898DeriveBytes(password, salt, 10000);
        //Note: Depending on the performance requirements of your specific application, the value '10000' can be reduced. 
        //      A minimum value should be around 1000.
        byte[] hash = pbkdf2.GetBytes(20);

        //STEP 3 Combine the salt and password bytes for later use:

        byte[] hashBytes = new byte[36];
        System.Array.Copy(salt, 0, hashBytes, 0, 16);
        System.Array.Copy(hash, 0, hashBytes, 16, 20);

        //STEP 4 Turn the combined salt+hash into a string for storage

        string savedPasswordHash = System.Convert.ToBase64String(hashBytes);

        //STEP 5 Return hashed password (It will be 48 characters long)
        return savedPasswordHash;

    }
}
