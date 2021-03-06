/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.controlador;

import com.sv.udb.modelo.Alumnos;
import com.sv.udb.modelo.Grupos;
import com.sv.udb.modelo.GruposAlumnos;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

/**
 *
 * @author Laboratorio
 */
public class GruposAlumnosCtrl {
    
    public static List<GruposAlumnos>  ConsPorGrupo(int idGrupo)
    {
        List<GruposAlumnos> resp = new ArrayList<>();
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("POOPU");
        EntityManager em = emf.createEntityManager();
        try
        {
          System.out.println("idGrupo "+idGrupo);
          System.out.println("Que ondas");
          TypedQuery<GruposAlumnos> query =em.createNamedQuery("GruposAlumnos.findByCodiGrupAlum", GruposAlumnos.class);
          Grupos objeGrupo = GruposCtrl.get(idGrupo);
          query.setParameter("codiGrupAlum", objeGrupo);
          resp = query.getResultList();
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
        }
        return resp;       
    }
    
    public boolean guar(GruposAlumnos obje)
    {
        boolean resp = false;
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("POOPU");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        try
        {
            em.persist(obje);
            tx.commit();
            resp = true;
        }
        catch(Exception ex)
        {   
            System.out.println(ex.getMessage());
            tx.rollback();
        }
        em.close();
        emf.close();
        return resp;
    }
}
