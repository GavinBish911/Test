package com.snhu.mscs.cs600.module5;

/**
 * Book - 
 * 
 * Purpose:
 *      The purpose of this class is to provide the representation of a single
 *      record of information for a book. This contains title, author and date
 *      of first publication. This class could be transformed into an @Entity
 *      class for use with Spring JPA with minor effort.
 * 
 * Class Level Annotations: N/A
 *
 * 
 * Sample Output: N/A
 * 
 * Constraints: N/A
 * 
 * Expected Results: 
 *      This class will be used to represent data from a test data set.
 * 
 * Version              Author      Date            Description
 * ***********************************************************************
 *     1                 fjm        24-oct-2025     Initial Creation
 */
public class Book {

    /**
     * title - The title of the book.
     */
    private String title;

    /**
     * author - The author of the book.
     */
    private String author;

    /**
     * year - The year of the first modern publication of the book.
     */
    private int year;

    /**
     * Book - Parameterized constructor to allow for the creation of
     * book records.
     * 
     * @param title String representing the title of the book.
     * @param author String representing the Author of the book.
     * @param year integer representing the date of first publication.
     */
    public Book(String title, String author, int year)
    {
        this.title = title;
        this.author = author;
        this.year = year;
    }

    public String toJSON()
    {
        String out = new String();
        out = out + "{ \"title\":\"" + title + "\",";
        out = out + "\"author\":\"" + author + "\",";
        out = out + "\"year\":\"" + year + "\" }";
        return out;
    }

    /**
     * The following section includes the default (empty) constructor as well as
     * accessor and mutator methods to provide encapsulation for each of the 
     * data attributes. Comments have not been provided as these are trivial.
     */

    public Book() {
        // Default constructor
    }


    public String getTitle()
    {
        return new String(title);
    }
    
    public void setTitle(String newTitle)
    {
        title = new String(newTitle);
    }

    public String getAuthor()
    {
        return new String(author);
    }

    public void setAuthor(String newAuthor)
    {
        author = new String(newAuthor);
    }
    
    public int getYear()
    {
        return year;
    }

    public void setYear(int newYear)
    {
        year = newYear;
    }
}
