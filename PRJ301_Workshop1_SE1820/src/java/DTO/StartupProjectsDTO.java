/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.sql.Date;
import java.time.LocalDate;
import java.time.Month;

/**
 *
 * @author THANH PHUONG
 */
public class StartupProjectsDTO {
    private int projectId;
    private String projectName;
    private String description;
    private String status;
    private Date estimatedLaunch;

    public StartupProjectsDTO() {
        this.projectId = 0;
        this.projectName = "";
        this.description= "";
        this.status = "";
        this.estimatedLaunch = Date.valueOf(LocalDate.MAX);
    }

    public StartupProjectsDTO(int projectId, String projectName, String description, String status, Date estimatedLaunch) {
        this.projectId = projectId;
        this.projectName = projectName;
        this.description = description;
        this.status = status;
        this.estimatedLaunch = estimatedLaunch;
    }

    public StartupProjectsDTO(String project_Name, String description, String status, Date estimatedLaunch) {
        this.projectName = project_Name;
        this.description = description;
        this.status = status;
        this.estimatedLaunch = estimatedLaunch;
    }

   

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String Description) {
        this.description = Description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String Status) {
        if(status != null && (status.equals("Ideation") || status.equals("Development") || status.equals("Launch") || status.equals("Scaling"))){
            this.status = status;
        } else {
            throw new IllegalArgumentException("Invalid status value");
        }
    }

    public Date getEstimatedLaunch() {
        return estimatedLaunch;
    }

    public void setEstimatedLaunch(Date estimatedLaunch) {
        this.estimatedLaunch = estimatedLaunch;
    }
}