package com.snhu.mscs.cs600.module2lab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * APIController - 
 * 
 * Purpose:
 *      The purpose of this class is to provide the necessary controller
 *      mappings for a RESTful API. These will utilize additional classes
 *      and libraries as necessary to create and maintain the necessary
 *      API functionality for the Module2 Application.
 * 
 * Class Level Annotations:
 *      @RestController - This tells the spring framework that this
 *      class is providing RESTful API endpoints for the application
 *      and enables those components in the framework.
 * 
 *      @RequestMapping - This tells the spring framework what the 
 *      root of the namespace is for our RESTful API.
 * 
 * Sample Output:
 *      Accessing the 'version' endpoint provided by this application
 *      through the URL http://127.0.0.1:8080/api/v1/version should
 *      result in:
 *              Version-1.0
 * 
 * Constraints: N/A
 * 
 * Expected Results:
 *      Each API endpoint in this class should respond as defined and
 *      documented to appropriely formatted calls.
 * 
 * Version              Author      Date            Description
 * ***********************************************************************
 *     1                 fjm        3-Oct-2025     Initial Creation
 */
@RestController
@RequestMapping("/api/v1")
public class APIController {

    @Autowired
    private NameService nameService;

    /**
     * APIController - This is a generic placeholder for the 
     * constructor for this class. Its purpose is to provide a placeholder
     * as future development on this application may require adaptations
     * to the constructor.
     */
    public APIController(NameService service){
        this.nameService = service;
    }

    /**
     * getVersion - This method supports a simple return of what version
     * of the API is being provided. This should be changed when major
     * changes are made to this API.
     * 
     * Annotations:
     *      @GetMapping - This annotation indicates the name of the 
     *      endpoint. It is added to the end of the value of 
     *      @RequestMapping that sets the namespace for this class.
     * 
     * @return String indicating the version of the API being provided.
     */
    @GetMapping("/version")
    public String getVersion(){
        return "Version-1.0";
    }


    /**
     * getNames - This method supports the display of a list of names.
     * This is the version of the /names endpoint that calls for the data
     * directly from the Database.
     * 
     * Annotations:
     *      @GetMapping - This annotation indicates the name of the 
     *      endpoint. It is added to the end of the value of 
     *      @RequestMapping that sets the namespace for this class.
     * 
     * @return A JSON structure (as a String) containing the list of
     *         first, middle, last names and suffixes.
     */
    @GetMapping("/names")
    public List<Name> getNames()
    {
        return nameService.findAll();
    }

    /**
     * getNameByLast - This method supports the display of one or more names
     * that match the lastname provided as a RESTful parameter.
     * 
     * Annotations:
     *      @GetMapping - This annotation indicates the name of the 
     *      endpoint. It is added to the end of the value of 
     *      @RequestMapping that sets the namespace for this class.
     * 
     * @return A JSON structure (as a String) containing the list of
     *         first, middle, last, and suffix for a given name.
     */
    @GetMapping("/name/{last}")
    public List<Name> getNameByLast(@PathVariable String last)
    {
        return nameService.findByLast(last);
    }
}
