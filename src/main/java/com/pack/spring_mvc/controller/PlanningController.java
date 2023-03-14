package com.pack.spring_mvc.controller;

import com.pack.spring_mvc.model.Planning;
import com.pack.spring_mvc.model.Plannings;
import com.pack.spring_mvc.model.Utilisateur;
import com.pack.spring_mvc.service.AuteurService;
import com.pack.spring_mvc.service.PlanningService;
import com.pack.spring_mvc.service.PlanningsService;
import com.pack.spring_mvc.service.PlateauService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.List;

@Controller
public class PlanningController {
    /*@Autowired
    PlanningsService planningService;*/

    @Autowired
    PlanningService planningService;

    @Autowired
    PlateauService plateauService;

    @Autowired
    AuteurService service;

    /*@GetMapping("/list-planning")
    public String listPlanningByFilm(@RequestParam int idFilm, Model m, HttpSession httpSession){
        try{
            int idUtilisateur = (int)httpSession.getAttribute("idUtilisateur");
            Utilisateur utilisateur = service.findUserSession(idUtilisateur);

            m.addAttribute("utilisateur", utilisateur );
            List<List<Plannings>> allplanning=planningService.getPlanByFilm(idFilm);
            m.addAttribute("allplanning",allplanning);
            return "list-planning";
        }
        catch (Exception ex){
            ex.printStackTrace();
            throw ex;
        }
    }*/

    @PostMapping("/planifier")
    public String planifier(@RequestParam String [] idScene,@RequestParam String [] heureIdeal, Model m, HttpSession httpSession)throws Exception{
        try{
            int idUtilisateur = (int)httpSession.getAttribute("idUtilisateur");
            Utilisateur utilisateur = service.findUserSession(idUtilisateur);
            m.addAttribute("utilisateur", utilisateur );

            for(int i=0; i<idScene.length; i++){
                System.out.println("EEEEEEEEEEEE "+idScene[i]);
            }
            m.addAttribute("idScene", idScene);
            m.addAttribute("heureIdeal", heureIdeal);

            m.addAttribute("plateaux", plateauService.getAll());
            return "create-planning";
        }
        catch (Exception ex){
            ex.printStackTrace();
            throw ex;
        }
    }

    @PostMapping("/valider")
    public String valider(@RequestParam String [] idScene,@RequestParam String [] heureIdeal, @RequestParam String dateDebut, @RequestParam String dateFin, @RequestParam String [] idPlateau, @RequestParam String [] heureDebut, @RequestParam String [] heureFin, Model m, HttpSession httpSession)throws Exception{
        try{

            System.out.println("ETTTTT "+idScene.length+"     "+heureIdeal.length);
            int idUtilisateur = (int)httpSession.getAttribute("idUtilisateur");
            Utilisateur utilisateur = service.findUserSession(idUtilisateur);
            m.addAttribute("utilisateur", utilisateur );

            Planning planning = new Planning();
            planning.setDateDebut(LocalDateTime.parse(dateDebut));
            planning.setDateFin(LocalDateTime.parse(dateFin));
            Planning p = planningService.createPlanning(planning, idPlateau, heureDebut, heureFin, idScene, heureIdeal);

            m.addAttribute("planning", p);
            return "list-planning";
        }
        catch (Exception ex){
            ex.printStackTrace();
            throw ex;
        }
    }

}
