package com.pack.spring_mvc.service;

import com.pack.spring_mvc.dao.HibernateDao;
import com.pack.spring_mvc.model.*;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
public class PlanningSceneService {

    @Autowired
    HibernateDao dao;

    public HibernateDao getDao() {
        return dao;
    }

    public void setDao(HibernateDao dao) {
        this.dao = dao;
    }

    public List<V_PlanningSceneAdd> getPlanningScene(int idPlanning){
        Session sess=dao.getSessionFactory().openSession();
        Criteria critere=sess.createCriteria(V_PlanningSceneAdd.class);
        critere.add(Restrictions.eq("idplanning",idPlanning));
        List<V_PlanningSceneAdd>planningList=critere.list();
        sess.close();
        return planningList;
    }


    public PlanningPlateau findPlateauHour(int idPlateau){
        List<PlanningPlateau>planningPlateauList=dao.findAll(PlanningPlateau.class);
        for(PlanningPlateau planningPlateau:planningPlateauList){
            if(planningPlateau.getPlateau().getIdPlateau()==idPlateau){
                return planningPlateau;
            }
        }
        return null;
    }

    public List<V_PlanningSceneAdd> findByIdPlanning(int idPlanning){
        Session sess=dao.getSessionFactory().openSession();
        Criteria critere=sess.createCriteria(V_PlanningSceneAdd.class);
        critere.add(Restrictions.eq("idplanning",idPlanning));
        List<V_PlanningSceneAdd>vplanningscene=critere.list();
        System.out.println("re"+vplanningscene.size());
        sess.close();
        return vplanningscene;
    }

    public boolean checkPlateauDispo(V_PlanningSceneAdd planningSceneAdd){
        PlanningPlateau myplateau=this.findPlateauHour(planningSceneAdd.getIdplateau());
        if(myplateau==null){
            return false;
        }
        if((myplateau.getHeureDebut().getTime()<=(planningSceneAdd.getHeureideal().getTime()))
            &&(myplateau.getHeureFin().getTime()>=(planningSceneAdd.getHeureideal().getTime()))){
            return true;
        }
        return false;
    }

    public List<V_PlanningSceneAdd> configureDateScene(Timestamp debut, Timestamp datefin, List<V_PlanningSceneAdd>allscene)throws Exception{
        List<V_PlanningSceneAdd> sceneHour=new ArrayList<>();
        for(V_PlanningSceneAdd scene:allscene){
            Timestamp fin=new Timestamp(debut.getTime()+(scene.getTotalduree()*1000));
            if(!(this.checkPlateauDispo(scene))){
                throw new Exception("Aucun Plateau Disponible pour la scene "+scene.getIdscene());
            }
            if(fin.getTime()>datefin.getTime()){
                throw new Exception("Duree Trop Courte");
            }
            scene.setDatedebut(debut.toLocalDateTime());
            scene.setDatefin(fin.toLocalDateTime());
            sceneHour.add(scene);
            debut=Timestamp.valueOf(new Date(fin.getTime()).toString()+" "+scene.getHeureideal().toString());
            if(fin.getTime()>debut.getTime()){
                debut=fin;
            }
        }
        return sceneHour;
    }

    public void updatePlanningScene(V_PlanningSceneAdd planScene)throws Exception{
        PlanningScene p=dao.findById(PlanningScene.class,planScene.getIdplanningscene());
        p.setDateDebut(planScene.getDatedebut());
        p.setDateFin(planScene.getDatefin());
        dao.update(p);
    }

    public PlanningScene update(int id,LocalDateTime datedebut,LocalDateTime datefin){
        PlanningScene p=dao.findById(PlanningScene.class,id);
        p.setDateDebut(datedebut);
        p.setDateFin(datefin);
        dao.update(p);
        return p;
    }


    public List<V_PlanningSceneAdd> updateAllPlanningScene(List<V_PlanningSceneAdd> allscene, Planning myplanning)throws Exception{
        String heuretemp="00:00:00";
        if(allscene.size()!=0){
            Timestamp mytime=Timestamp.valueOf(myplanning.getDateDebut());
            if(allscene.get(0).getHeureideal()!=null){
                Timestamp tempmytime=Timestamp.valueOf(new Date(Timestamp.valueOf(myplanning.getDateDebut()).getTime())+" "+allscene.get(0).getHeureideal());
                if(tempmytime.getTime()>=mytime.getTime())
                    mytime=tempmytime;
                try{
                    return this.configureDateScene(mytime,Timestamp.valueOf(myplanning.getDateFin()),allscene);
                }
                catch (Exception e){
                    throw new Exception(e.getMessage());
                }
            }
        }
        return new ArrayList<V_PlanningSceneAdd>();
    }

    public void finishPlanning(Planning p)throws Exception{
        List<V_PlanningSceneAdd>allplanscene=this.findByIdPlanning(p.getIdPlanning());
        List<V_PlanningSceneAdd>plansceneupdate=this.updateAllPlanningScene(allplanscene,p);
        for(V_PlanningSceneAdd scene:plansceneupdate){
            this.updatePlanningScene(scene);
        }

    }

}
