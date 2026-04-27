package com.snhu.mscs.cs600.module2lab;

/**
 * Imports to support Spring JPA configuration
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Imports to provide access to Java Collections
 */
import java.util.List;

/**
 * NameService - 
 * 
 * Purpose:
 *      The purpose of this class is to provide the necessary functionality
 *      to interact with the Repository interface for Spring Data JPA. This is
 *      the class that interacts with the application (or API controller(s))
 *      to provide access to a database.
 *
 * Class Level Annotations:
 *      @Service - This tells the spring framework that this
 *      class is a Service implementation and enables the appropriate capabilities
 *      through the framework.
 * 
 * Sample Output:
 *      This service utilizes the queries that are enabled in the Repository
 *      interface in order to return data to our application - in this case - 
 *      the APIController
 * 
 * Constraints: N/A
 * 
 * Expected Results:
 *      Each query executed in the class will provide appropriate data as
 *      necessary to the calling function within the application.
 * 
 * Version              Author      Date            Description
 * ***********************************************************************
 *     1                 fjm        3-Oct-2025     Initial Creation
 */
@Service
public class NameService {
    
    /**
     * nameRepo - reference to the NameRepository interface that directly
     * interacts with the Postgres database. 
     * 
     * Annotations:
     *      @Autowired - Automatically configures the repository 
     *      connection through the appropriate constructors
     */
    @Autowired
    private NameRepository nameRepo;

    /**
     * NameService - Constructor utilized to initialize the connection
     * with the Repository.
     * 
     * @param repo - NameRepository object representing the connection
     * to the database.
     */
    public NameService(NameRepository repo)
    {
        this.nameRepo = repo;
    }

    /**
     * findAll - Utility method to return all Name records in the database.
     * 
     * @return JSON list of all Name records in the database.
     */
    public List<Name> findAll()
    {
        // Delegate work through the Repository
        return nameRepo.findNames();
    }

    /**
     * findByLast - Utility method to return one or more names in the
     * database that match the provided String
     * 
     * @param last - String representing the last name to search for.
     * 
     * @return JSON list of all Name records that match the title string.
     */
    public List<Name> findByLast(String last)
    {
        // Delegate work through the Repository
        return nameRepo.findByLast(last);
    }
}
