package com.pack.spring_mvc.service;

import com.pack.spring_mvc.dao.HibernateDao;
import com.pack.spring_mvc.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Time;
import java.util.List;

@Service
public class PlanningService {

    @Autowired
    HibernateDao dao;

    public HibernateDao getDao() {
        return dao;
    }

    public void setDao(HibernateDao dao) {
        this.dao = dao;
    }

    public List<Planning> getAll(){
        return dao.findAll(Planning.class);
    }

    public Planning createPlanning(Planning planning)throws Exception{
        try{
            Planning p = dao.create(planning);
            return p;
        }
        catch (Exception e){
            throw new Exception("Erreur d'insertion planning");
        }
    }

    public void createPlanningPlateau(Planning planning, int [] idPlateau, String [] heureDebut, String [] heureFin)throws Exception{
        try{
            for(int i=0; i<idPlateau.length; i++){
                PlanningPlateau p = new PlanningPlateau();
                Plateau plateau = dao.findById(Plateau.class,idPlateau[i]);
                p.setPlanning(planning);
                p.setPlateau(plateau);
                p.setHeureDebut(Time.valueOf(heureDebut[i]));
                p.setHeureFin(Time.valueOf(heureFin[i]));
                dao.create(p);
            }
        }
        catch (Exception e){
            throw new Exception("Erreur d'insertion planning plateau");
        }
    }

    public void createPlanningScene(Planning planning, int [] idScene, String [] heureIdeal)throws Exception{
        try{
            for(int i=0; i<idScene.length; i++){
                PlanningScene p = new PlanningScene();
                Scene scene = dao.findById(Scene.class,idScene[i]);
                p.setScene(scene);
                p.setPlanning(planning);
                p.setHeureIdeal(Time.valueOf(heureIdeal[i]));
                dao.create(p);
            }
        }
        catch (Exception e){
            throw new Exception("Erreur d'insertion planning scene");
        }
    }

    public Planning createPlanning(Planning planning, int [] idPlateau, String [] heureDebut, String [] heureFin, int [] idScene, String [] heureIdeal)throws Exception{
        try{
            Planning p = this.createPlanning(planning);
            this.createPlanningPlateau(p, idPlateau, heureDebut, heureFin);
            this.createPlanningScene(p, idScene, heureIdeal);
            return p;
        }
        catch (Exception e){
            throw e;
        }
    }
}
