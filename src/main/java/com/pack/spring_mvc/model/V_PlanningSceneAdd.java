package com.pack.spring_mvc.model;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;
import java.time.LocalDateTime;

@Entity
public class V_PlanningSceneAdd {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    @Column( name = "idplanningscene")
    private Integer idplanningscene;

    @Column( name = "idscene")
    private int idscene;

    @Column( name = "idplanning")
    private int idplanning;

    @Column( name = "datedebut")
    private LocalDateTime datedebut;

    @Column( name = "datefin")
    private LocalDateTime datefin;

    @Column(name = "heureideal")
    private Time heureideal;

    @Column(name = "idplateau")
    private int idplateau;
    @Column(name = "totalduree")
    private long totalduree;

    public int getIdplateau() {
        return idplateau;
    }

    public void setIdplateau(int idplateau) {
        this.idplateau = idplateau;
    }

    public Integer getIdplanningscene() {
        return idplanningscene;
    }

    public void setIdplanningscene(Integer idplanningscene) {
        this.idplanningscene = idplanningscene;
    }

    public int getIdscene() {
        return idscene;
    }

    public void setIdscene(int idscene) {
        this.idscene = idscene;
    }

    public int getIdplanning() {
        return idplanning;
    }

    public void setIdplanning(int idplanning) {
        this.idplanning = idplanning;
    }

    public LocalDateTime getDatedebut() {
        return datedebut;
    }

    public void setDatedebut(LocalDateTime datedebut) {
        this.datedebut = datedebut;
    }

    public LocalDateTime getDatefin() {
        return datefin;
    }

    public void setDatefin(LocalDateTime datefin) {
        this.datefin = datefin;
    }

    public Time getHeureideal() {
        return heureideal;
    }

    public void setHeureideal(Time heureideal) {
        this.heureideal = heureideal;
    }

    public long getTotalduree() {
        return totalduree;
    }

    public void setTotalduree(long totalduree) {
        this.totalduree = totalduree;
    }
}
