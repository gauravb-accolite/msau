package com.accolite.msau.controllers;

import com.accolite.msau.entities.Demand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class DemandController {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @GetMapping("/demand")
    public Demand getDemand(@RequestParam String id) {
        String sqlQuery = "SELECT id, msHiringManager FROM demand WHERE id=?";
        try {
            return jdbcTemplate.queryForObject(sqlQuery, new BeanPropertyRowMapper<>(Demand.class), id);
        } catch (DataAccessException e) {
            System.out.println("Data Access Exception\t" + e.toString());
            return null;
        } catch (Exception e) {
            System.out.println("Exception\t" + e.toString());
            return null;
        }
    }

    @GetMapping("/demandIDs")
    public List<String> getEmployeeEmails() {
        String sqlQuery = "SELECT id from demand";
        try {
            return jdbcTemplate.queryForList(sqlQuery, String.class);
        } catch (DataAccessException e) {
            System.out.println("Data Access Exception\t" + e.toString());
            return null;
        } catch (Exception e) {
            System.out.println("Exception\t" + e.toString());
            return null;
        }
    }
}
