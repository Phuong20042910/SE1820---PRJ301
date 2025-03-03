/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.StartupProjectsDTO;
import java.util.List;

/**
 *
 * @author THANH PHUONG
 */
public class StartupProjectsDAO implements IDAO<StartupProjectsDTO, String>{

     @Override
    public boolean create(StartupProjectsDTO entity) {
         return false;
    }

    @Override
    public List<StartupProjectsDTO> readAll() {
        return null;
    }

    @Override
    public StartupProjectsDTO readById(String id) {
        return null;
    }

    @Override
    public boolean update(StartupProjectsDTO entity) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }

    @Override
    public List<StartupProjectsDTO> search(String searchTerm) {
        return null;
    }
    
}
