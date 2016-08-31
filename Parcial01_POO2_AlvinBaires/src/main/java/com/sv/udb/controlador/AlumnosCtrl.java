package com.sv.udb.controlador;
import com.sv.udb.modelo.*;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
/**
 *
 * @author Laboratorio
 */
public class AlumnosCtrl {
    public boolean guar(Alumnos obje)
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
            tx.rollback();
        }
        em.close();
        emf.close();
        return resp;
    }
}
