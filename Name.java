/*
 * Modified by: Gavin Bish
 */
package com.snhu.mscs.cs600.namesfeature.data;

/**
 * Imports to support the record that will be obtained from the Database. 
 */
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 * Name - 
 * 
 * Purpose:
 *      The purpose of this class is to provide the representation of a single
 *      record as it exists in the database. This is considered an 'Entity'
 *      class because it defines the object that represents the database record.
 *      Complex applications may have more than one Entity class for interacting
 *      with the database through the Spring Data JPA framework.
 *
 * Class Level Annotations:
 *      @Entity - This tells the Spring framework that this class defines an
 *      object that will be used to represent a record from the database 
 *      connected through Spring Data JPA.
 * 
 * Sample Output: N/A
 * 
 * Constraints: N/A
 * 
 * Expected Results: 
 *      This class will be used to represent data from and persist data to the
 *      database connected through the Spring Data JPA framework.
 * 
 * Version              Author      Date            Description
 * ***********************************************************************
 *     1                 fjm        29-Sep-2025     Initial Creation
 *     2                 gmb        27-May-2026     Modified
 */
@Entity
public class Name {

    /**
     * id - The unique id (and Primary key) for the data record.
     * 
     * Annotations:
     *      @Id - indicates to the framework that this variable represents the
     *      primary key used by the data record.
     *      @GeneratedValue - indicates to the framework that when a new object
     *      is created by the application, the framework will assign it a unique
     *      value. The strategy selected here (GenerationType.SEQUENCE) uses 
     *      the sequence object that has already been created in the database
     *      to obtain the next value.
     */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    /**
     * first - The first name of the individual in the record.
     */
    private String first;

    /**
     * middle - The middle name of the individual in the record.
     */
    private String middle;

    /**
     * last - The last name of the individual in the record.
     */
    private String last;

    /**
     * suffix - A possible suffix for the name in the record.
     */
    private String suffix;

    /**
     * The following section includes the default (empty) constructor as well as
     * accessor and mutator methods to provide encapsulation for each of the four 
     * data attributes. Comments have not been provided as these are trivial.
     */

    public Name() {
        // Default constructor
    }

    public Long getId()
    {
        return id;
    }

    public void setId(Long val)
    {
        id = val;
    }

    public String getFirst()
    {
        return (first == null) ? "" : new String(first);
    }
    
    public void setFirst(String newFirst)
    {
        if (newFirst == null) {
            first = null;
        } else {
            first = new String(newFirst);
        }
    }

    public String getMiddle()
    {
        return (middle == null) ? "" : new String(middle);
    }

    public void setMiddle(String newMiddle)
    {
        if (newMiddle == null) {
            middle = null;
        } else {
            middle = new String(newMiddle);
        }
    }
    
    public String getLast()
    {
        return (last == null) ? "" : new String(last);
    }

    public void setLast(String newLast)
    {
        if (newLast == null) {
            last = null;
        } else {
            last = new String(newLast);
        }
    }

    public String getSuffix()
    {
        return (suffix == null) ? "" : new String(suffix);
    }

    public void setSuffix(String newSuffix)
    {
        if (newSuffix == null) {
            suffix = null;
        } else {
            suffix = new String(newSuffix);
        }
    }
}
