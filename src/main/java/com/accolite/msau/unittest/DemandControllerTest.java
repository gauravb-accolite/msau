package com.accolite.msau.unittest;

import com.accolite.msau.controllers.DemandController;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.MediaType;
import org.mockito.Mockito;
import org.springframework.test.context.junit4.SpringRunner;
import org.skyscreamer.jsonassert.JSONAssert;

import com.accolite.msau.entities.Demand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@RunWith(SpringRunner.class)
@WebMvcTest(value = DemandController.class)
public class DemandControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    JdbcTemplate jdbcTemplate;

    @Test
    public void getDemand() throws Exception {
        Demand expectedDemand = new Demand("MUM_41409", "Keith Nikolic");

        Mockito.when(jdbcTemplate.queryForObject(Mockito.anyString(), Mockito.any(BeanPropertyRowMapper.class), Mockito.anyString())).thenReturn(expectedDemand);

        RequestBuilder requestBuilder = MockMvcRequestBuilders.get("/demand?id=MUM_41409").accept(MediaType.APPLICATION_JSON);
        MvcResult result = mockMvc.perform(requestBuilder).andReturn();

        System.out.println(result.getResponse());

        String expected = "{\"id\":\"MUM_41409\",\"msHiringManager\":\"Keith Nikolic\"}";

        JSONAssert.assertEquals(expected, result.getResponse().getContentAsString(), false);
    }

    @Test
    public void getDemandNonExistentID() throws Exception {

        Mockito.when(jdbcTemplate.queryForObject(Mockito.anyString(), Mockito.any(BeanPropertyRowMapper.class), Mockito.anyString())).thenThrow(EmptyResultDataAccessException.class);

        RequestBuilder requestBuilder = MockMvcRequestBuilders.get("/demand?id=MUM_00000").accept(MediaType.APPLICATION_JSON);
        mockMvc.perform(requestBuilder).andExpect(jsonPath("$").doesNotExist());
    }


}
