package com.pack.spring_mvc.controller;

import com.pack.spring_mvc.model.Planning;
import com.pack.spring_mvc.model.Utilisateur;
import com.pack.spring_mvc.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class PlanningController {
    /*@Autowired
    PlanningsService planningService;*/
    @Autowired
    PlanningSceneService planningSceneService;
    @Autowired
    PlanningService planningService;

    @Autowired
    PlateauService plateauService;

    @Autowired
    AuteurService service;

    @GetMapping("/list-planning")
    public String listPlanningByFilm(Model m, HttpSession httpSession){
        try{
            int idUtilisateur = (int)httpSession.getAttribute("idUtilisateur");
            Utilisateur utilisateur = service.findUserSession(idUtilisateur);
            m.addAttribute("utilisateur", utilisateur );
            m.addAttribute("listplanning",planningService.getAll());
            return "list-planning";
        }
        catch (Exception ex){
            ex.printStackTrace();
            throw ex;
        }
    }

    @GetMapping("/list-planningscene")
    public String listScene(@RequestParam int idPlanning,Model m, HttpSession httpSession){
        try{
            int idUtilisateur = (int)httpSession.getAttribute("idUtilisateur");
            Utilisateur utilisateur = service.findUserSession(idUtilisateur);
            m.addAttribute("utilisateur", utilisateur );
            m.addAttribute("listscene",planningSceneService.getPlanningScene(idPlanning));
            return "list-planningscene";
        }
        catch (Exception ex){
            ex.printStackTrace();
            throw ex;
        }
    }

    @PostMapping("/planifier")
    public String planifier(@RequestParam int [] idScene,@RequestParam String [] heureIdeal, Model m, HttpSession httpSession)throws Exception{
        try{
            int idUtilisateur = (int)httpSession.getAttribute("idUtilisateur");
            Utilisateur utilisateur = service.findUserSession(idUtilisateur);
            m.addAttribute("utilisateur", utilisateur );

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
    public String valider(@RequestParam int [] idScene,@RequestParam String [] heureIdeal, @ModelAttribute Planning planning, @RequestParam int [] idPlateau, @RequestParam String [] heureDebut, @RequestParam String [] heureFin, Model m, HttpSession httpSession)throws Exception{
        try{
            int idUtilisateur = (int)httpSession.getAttribute("idUtilisateur");
            Utilisateur utilisateur = service.findUserSession(idUtilisateur);
            m.addAttribute("utilisateur", utilisateur );

            Planning p = planningService.createPlanning(planning, idPlateau, heureDebut, heureFin, idScene, heureIdeal);
            m.addAttribute("planning", p);
            planningSceneService.finishPlanning(p);
            return "list-planningscene";
        }
        catch (Exception ex){
            ex.printStackTrace();
            throw ex;
        }
    }

}
