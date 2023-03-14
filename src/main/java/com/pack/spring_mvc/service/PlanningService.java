package com.pack.spring_mvc.service;

import com.pack.spring_mvc.dao.HibernateDao;
import com.pack.spring_mvc.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Time;
import java.time.LocalTime;

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

    public Planning createPlanning(Planning planning)throws Exception{
        try{
            Planning p = dao.create(planning);
            return p;
        }
        catch (Exception e){
            throw new Exception("Erreur d'insertion planning");
        }
    }

    public void createPlanningPlateau(Planning planning, String [] idPlateau, String [] heureDebut, String [] heureFin)throws Exception{
        try{
            for(int i=0; i<idPlateau.length; i++){
                PlanningPlateau p = new PlanningPlateau();
                Plateau plateau = dao.findById(Plateau.class,Integer.parseInt(idPlateau[i]));
                System.out.println("Eto anh plateau"+plateau.getIdPlateau());

                System.out.println("Eto anh planning "+planning.getIdPlanning());
                p.setPlanning(planning);
                System.out.println("Eto anh planning plateau"+p.getPlanning().getIdPlanning());
                p.setPlateau(plateau);
                System.out.println("Eto anh planning plateau 2"+p.getPlateau().getIdPlateau());



                p.setHeureDebut(Time.valueOf(LocalTime.parse(heureDebut[i])));
                p.setHeureFin(Time.valueOf(LocalTime.parse(heureFin[i])));

                System.out.println("debut "+p.getHeureDebut());
                System.out.println("fin "+p.getHeureFin());

                dao.create(p);
            }
        }
        catch (Exception e){
            throw new Exception("Erreur d'insertion planning plateau "+e.getMessage());
        }
    }

    public void createPlanningScene(Planning planning, String [] idScene, String [] heureIdeal)throws Exception{
        try{
            System.out.println("Eto "+idScene.length+"  "+idScene[0]);
            for(int i=0; i<idScene.length; i++){
                PlanningScene p = new PlanningScene();
                Scene scene = dao.findById(Scene.class,Integer.parseInt(idScene[i]));
                System.out.println("Eto scene scene "+scene.getIdScene());
                p.setScene(scene);
                p.setPlanning(planning);
                System.out.println("Eto planning scene "+p.getPlanning().getIdPlanning());
                p.setHeureIdeal(Time.valueOf(LocalTime.parse(heureIdeal[i])));
                dao.create(p);
            }
        }
        catch (Exception e){
            throw new Exception("Erreur d'insertion planning scene "+e.getMessage());
        }
    }

    public Planning createPlanning(Planning planning, String [] idPlateau, String [] heureDebut, String [] heureFin, String [] idScene, String [] heureIdeal)throws Exception{
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
