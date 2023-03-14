package com.pack.spring_mvc.model;

import javax.persistence.*;
import java.sql.Time;
@Entity
public class PlanningPlateau {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    @Column( name = "idplanningplateau")
    private Integer idPlanningPlateau;

    @ManyToOne
    @JoinColumn(name = "idplanning")
    private Planning planning;
    @ManyToOne
    @JoinColumn(name = "idplateau")
    private Plateau plateau;

    @Column( name = "heure_debut")
    private Time heureDebut;

    @Column( name = "heure_fin")
    private Time heureFin;

    public void setPlateau(Plateau plateau) {
        this.plateau = plateau;
    }

    public void setHeureDebut(Time heureDebut) {
        this.heureDebut = heureDebut;
    }

    public void setIdPlanningPlateau(Integer idPlanningPlateau) {
        this.idPlanningPlateau = idPlanningPlateau;
    }

    public void setHeureFin(Time heureFin) {
        this.heureFin = heureFin;
    }

    public Integer getIdPlanningPlateau() {
        return idPlanningPlateau;
    }

    public Plateau getPlateau() {
        return plateau;
    }

    public Time getHeureDebut() {
        return heureDebut;
    }

    public Time getHeureFin() {
        return heureFin;
    }

    public void setPlanning(Planning planning) {
        this.planning = planning;
    }

    public Planning getPlanning() {
        return planning;
    }
}
