package com.pack.spring_mvc.controller;

import com.pack.spring_mvc.model.Films;
import com.pack.spring_mvc.model.Statut;
import com.pack.spring_mvc.model.Utilisateur;
import com.pack.spring_mvc.model.V_Films;
import com.pack.spring_mvc.service.FilmSerivce;
import com.pack.spring_mvc.service.StatutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FilmsController {

    @Autowired
    private FilmSerivce filmSerivce;

    @Autowired
    private StatutService statutService;

    @GetMapping("/create-films")
    public String createFilms(Model model, HttpSession session)throws Exception{
        return "create-films";
    }

    @PostMapping("/save-films")
    public String saveFilms(@ModelAttribute Films films, @RequestParam(required = false) String [] noms, @RequestParam(required = false)  String [] descriptions, @RequestParam("files") MultipartFile files, Model model, HttpSession session)throws Exception{
        try{
            String path = "F:\\L3\\S6\\MrNaina\\Film\\spring_mvc_template_project\\src\\main\\webapp\\image";
            System.out.println("Eto "+path);
            // int idUtilisateur = Integer.parseInt(String.valueOf(session.getAttribute("idUtilisateur")));
            int idUtilisateur = 2;
            films.setIdUtilisateur(idUtilisateur);
            filmSerivce.createFilms(films, files, path, noms, descriptions);
            return "liste-films";
        }
        catch (Exception e){
            throw e;
        }
    }

    @GetMapping("/update-films")
    public String updateFilms(@RequestParam int idFilms, Model model, HttpSession session)throws Exception{
        try{
            V_Films films = filmSerivce.getFilms(idFilms);
            List<Statut> statuts = statutService.getAll();
            Utilisateur user = new Utilisateur();
            user.setIdrole(1);
            model.addAttribute("user",user);
            model.addAttribute("films",films);
            model.addAttribute("status",statuts);
            return "update-films";
        }
        catch (Exception e){
            throw e;
        }
    }

    @PostMapping("/modifier-films")
    public String modifierFilms(@ModelAttribute Films films, Model model, HttpSession session)throws Exception{
        try{
            Films f = filmSerivce.updateFilms(films);
            V_Films f1 = filmSerivce.getFilms(f.getIdFilms());
            List<Statut> statuts = statutService.getAll();
            Utilisateur user = new Utilisateur();
            user.setIdrole(1);
            model.addAttribute("user",user);
            model.addAttribute("films",f1);
            model.addAttribute("status",statuts);
            return "update-films";
        }
        catch (Exception e){
            throw e;
        }
    }
}
