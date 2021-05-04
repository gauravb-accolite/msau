package com.accolite.msau.controllers;

import com.accolite.msau.entities.Onboardee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class OnboardeeController {

    @Autowired
    JdbcTemplate jdbcTemplate;

//    CRUD - Create, Read done

    @GetMapping("/onboardees")
    public List<Onboardee> getAllOnboardees() {
        String sqlQuery = "SELECT name, onboardee.email, demand_id as demandId, onboarding_start as onboardingStart, onboarding_end as onboardingEnd FROM onboardee INNER JOIN employee ON onboardee.email = employee.email";
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
        String sqlQuery = "SELECT onboardee.email, demand_id as demandId, msHiringManager, onboarding_start as onboardingStart, onboarding_end as onboardingEnd, bg_check as bgCheck, training, project, name, mob as phone FROM onboardee INNER JOIN employee ON onboardee.email = employee.email AND onboardee.email = ? INNER JOIN demand ON onboardee.demand_id = id";
        try {
            Onboardee reqdOnboardee = jdbcTemplate.queryForObject(sqlQuery, new BeanPropertyRowMapper<>(Onboardee.class), email);

            String skillsQuery = "SELECT skill from employee_skills WHERE email = ?";
            reqdOnboardee.setSkills(jdbcTemplate.queryForList(skillsQuery, String.class, email));
            return  reqdOnboardee;

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

    @PostMapping("/updateOnboardee")
    public int updateOnboardee(@RequestBody Onboardee updatedOnboardee) {
        String sqlQuery = "UPDATE onboardee SET demand_id=?, onboarding_start=?, onboarding_end=?, bg_check=?, training=?, project=? WHERE email=?";
        try {
            return jdbcTemplate.update(sqlQuery, updatedOnboardee.getDemandId(), updatedOnboardee.getOnboardingStart(), updatedOnboardee.getOnboardingEnd(), updatedOnboardee.getBgCheck(), updatedOnboardee.getTraining(), updatedOnboardee.getProject(), updatedOnboardee.getEmail());
        } catch (DataAccessException e) {
            System.out.println("Data Access Exception\t" + e.toString());
            return 0;
        } catch (Exception e) {
            System.out.println("Exception\t" + e.toString());
            return 0;
        }
    }

    @PostMapping("/deleteOnboardee")
    public int deleteOnboardee(@RequestBody Map<String, String> body) {
        String sqlQuery = "DELETE FROM onboardee WHERE email=?";
        try {
            return jdbcTemplate.update(sqlQuery, body.get("email"));
        } catch (DataAccessException e) {
            System.out.println("Data Access Exception\t" + e.toString());
            return 0;
        } catch (Exception e) {
            System.out.println("Exception\t" + e.toString());
            return 0;
        }
    }
}