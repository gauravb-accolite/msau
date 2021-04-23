package com.accolite.msau.controllers;

import com.accolite.msau.entities.Onboardee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class OnboardeeController {

    @Autowired
    JdbcTemplate jdbcTemplate;

//    CRUD - Create, Read done

    @GetMapping("/onboardees")
    public List<Onboardee> getAllOnboardees() {
        String sqlQuery = "SELECT email, demand_id as demandId, onboarding_start as onboardingStart, onboarding_end as onboardingEnd, bg_check as bgCheck, training, project FROM onboardee";
        try {
            return jdbcTemplate.query(sqlQuery, new BeanPropertyRowMapper<>(Onboardee.class));
        } catch (DataAccessException e) {
            System.out.println("Data Access Exception\t" + e.toString());
            return null;
        } catch (Exception e) {
            System.out.println("Exception\t" + e.toString());
            return null;
        }
    }

    @GetMapping("/onboardee")
    public Onboardee getOnboardee(@RequestParam String email) {
        String sqlQuery = "SELECT onboardee.email, demand_id as demandId, onboarding_start as onboardingStart, onboarding_end as onboardingEnd, bg_check as bgCheck, training, project, name, mob FROM onboardee INNER JOIN employee ON onboardee.email = employee.email WHERE onboardee.email = ?";
        try {
            return jdbcTemplate.queryForObject(sqlQuery, new BeanPropertyRowMapper<>(Onboardee.class), email);
        } catch (DataAccessException e) {
            System.out.println("Data Access Exception\t" + e.toString());
            return null;
        } catch (Exception e) {
            System.out.println("Exception\t" + e.toString());
            return null;
        }
    }

    @PostMapping("/addOnboardee")
    public int addOnboardee(@RequestBody Onboardee newOnboardee) {
        String sqlQuery = "INSERT INTO onboardee(email, demand_id, onboarding_start, onboarding_end) VALUES(?, ?, ?, ?)";
        try {
            return jdbcTemplate.update(sqlQuery, newOnboardee.getEmail(), newOnboardee.getDemandId(), newOnboardee.getOnboardingStart(), newOnboardee.getOnboardingEnd());
        } catch (DataAccessException e) {
            System.out.println("Data Access Exception\t" + e.toString());
            return 0;
        } catch (Exception e) {
            System.out.println("Exception\t" + e.toString());
            return 0;
        }
    }

}
