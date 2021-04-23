package com.accolite.msau.controllers;

import com.accolite.msau.entities.Demand;
import com.accolite.msau.entities.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EmployeeController {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @GetMapping("/employee")
    public Employee getEmployee(@RequestParam String email) {
        String sqlQuery = "SELECT email, name, mob FROM employee WHERE email=?";
        try {
            return jdbcTemplate.queryForObject(sqlQuery, new BeanPropertyRowMapper<>(Employee.class), email);
        } catch (DataAccessException e) {
            System.out.println("Data Access Exception\t" + e.toString());
            return null;
        } catch (Exception e) {
            System.out.println("Exception\t" + e.toString());
            return null;
        }
    }
}
