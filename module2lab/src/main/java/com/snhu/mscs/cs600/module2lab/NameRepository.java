package com.snhu.mscs.cs600.module2lab;

/**
 * Imports for Spring JPA Compatibility and annotations.
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Import for the List collection.
 */
import java.util.List;

/**
 * NameRepository - 
 * 
 * Purpose:
 *      The purpose of this interface is to provide the necessary functionality
 *      to interact with the Postgres Database.
 *
 *      The Spring Data JPA framework creates the CRUD implementation 
 *      automatically at runtime
 * 
 * Class Level Annotations:
 *      @Repository - This tells the spring framework that this
 *      class is a Repository interface and enables access through the Spring JPA
 *      framework.
 * 
 * Sample Output:
 *      None - directly. However, the queries that are enabled in the Repository
 *      interface are used in the Service (NameService) class to return
 *      data to the APIController
 * 
 * Constraints: N/A
 * 
 * Expected Results:
 *      Each query executed in the class will provide appropriate data to 
 *      the corresponding Service function for access by the API controller.
 * 
 * Version              Author      Date            Description
 * ***********************************************************************
 *     1                 fjm        1-Oct-2025     Initial Creation
 */
@Repository
public interface NameRepository extends JpaRepository<Name, Long> {

    /**
     * findByLast - Find an individual record based on a search 
     * for the last name.
     * 
     * Annotations:
     *      @Query - String representing the appropriate query for the
     *      attached database. This can use either JPQL or native SQL.
     *      This query is configured to use native SQL for Postgres.
     *      Note: The colon ':' is used to signify the parameter passed in
     *      from the function call.
     * 
     * @param last - String representing the last name of the person to find.
     * @return A collection of names matching the requested title.
     */
    @Query(nativeQuery = true, value = "SELECT id,first,middle,last,suffix FROM names where last = :search")
    List<Name> findByLast(@Param("search") String last);

    /**
     * findNames - Find all names in the database.
     * 
     * Annotations:
     *      @Query - String representing the appropriate query for the
     *      attached database. This can use either JPQL or native SQL.
     *      This query is configured to use native SQL for Postgres.
     * 
     * @return A collection of Names from the database.
     */
    @Query(nativeQuery = true, value = "SELECT id,first,middle,last,suffix FROM names")
    List<Name> findNames();

}
