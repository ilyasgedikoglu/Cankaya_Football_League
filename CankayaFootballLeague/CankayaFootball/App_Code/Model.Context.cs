﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class CankayaFootballLeagueEntities : DbContext
{
    public CankayaFootballLeagueEntities()
        : base("name=CankayaFootballLeagueEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public virtual DbSet<Fixture> Fixtures { get; set; }
    public virtual DbSet<Referee> Referees { get; set; }
    public virtual DbSet<RefereeType> RefereeTypes { get; set; }
    public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
    public virtual DbSet<Team> Teams { get; set; }
    public virtual DbSet<Admin> Admins { get; set; }
    public virtual DbSet<Supporter> Supporters { get; set; }
    public virtual DbSet<UserType> UserTypes { get; set; }
}
