using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "LoginService" in code, svc and config file together.
public class LoginService : ILoginService
{
    public void DoWork()
    {
    }

    public Admin isAdminFound(string email, string password)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        Admin a = (from x in _db.Admins where x.Email == email && x.IsActive == true select x).SingleOrDefault();
        if (a==null)
        {
            isSupporterFound(email, password);
        }
        else
        {
           bool z = VerifyPassword(password, a.Password) == true;
            if (z==true)
            {
                return a;
            }
        }
        return null;
    }

    public Supporter isSupporterFound(string email, string password)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        
        Supporter s = (from x in _db.Supporters where x.Email==email && x.isActive == true select x).SingleOrDefault();
        if (VerifyPassword(password, s.Password) == true)
        {
            return s;
        }
        return null;
 
    }

    public static bool VerifyPassword(string password, string savedPasswordHash)
    {
        //STEP 6 Verify the user-entered password against a stored password

        /* Extract the bytes */
        byte[] hashBytes = System.Convert.FromBase64String(savedPasswordHash);
        /* Get the salt */
        byte[] salt = new byte[16];
        System.Array.Copy(hashBytes, 0, salt, 0, 16);
        /* Compute the hash on the password the user entered */
        var pbkdf2 = new System.Security.Cryptography.Rfc2898DeriveBytes(password, salt, 10000);
        byte[] hash = pbkdf2.GetBytes(20);
        /* Compare the results */
        for (int i = 0; i < 20; i++)
            if (hashBytes[i + 16] != hash[i])
                return false;
        return true;
    }
}
