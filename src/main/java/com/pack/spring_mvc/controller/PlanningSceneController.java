package com.pack.spring_mvc.controller;

import com.pack.spring_mvc.model.PlanningScene;
import com.pack.spring_mvc.model.V_PlanningSceneAdd;
import com.pack.spring_mvc.service.PlanningSceneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
public class PlanningSceneController {

    @Autowired
    PlanningSceneService planningSceneService;

    @PostMapping("/update-planning")
    public String updatePlanningScene(@RequestParam int id,@RequestParam String debut,@RequestParam String fin){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime dateDebut = LocalDateTime.parse(debut.replace("T"," ")+":00", formatter);
        LocalDateTime dateFin = LocalDateTime.parse(fin.replace("T"," ")+":00", formatter);
        PlanningScene plan=planningSceneService.update(id,dateDebut,dateFin);
        return "redirect:list-planningscene?idPlanning="+plan.getPlanning().getIdPlanning();
    }


}
