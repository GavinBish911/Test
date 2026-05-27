/*
 * Modified by: Gavin Bish
 */
package com.snhu.mscs.cs600.namesfeature.ui;

/**
 * Import for spring support of automatic configuration
 */
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Imports that support the Vaadin flow UI.
 */
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.Route;

/**
 * Application specific imports for UI components and data access.
 */
import com.snhu.mscs.cs600.base.ui.component.ViewToolbar;
import com.snhu.mscs.cs600.namesfeature.data.*;

/**
 * Annotation that indicates that this page is available to all users
 * who have been  authenticated to the application irrespective of Role.
 */
import jakarta.annotation.security.PermitAll;

/**
 * Import for Java collections
 */
import java.util.List;

/**
 * NameView - 
 * 
 * Purpose:
 *      The purpose of this class is to provide the UI view for data
 *      that has been retrieved from a database. This view creates a 
 *      table based on data from that database and displays it to the
 *      user in an easily understood fashion.
 * 
 * Extends: 
 *      VeritcalLayout - A basic layout structure where items are added to
 *      the canvas in a vertical orientation.
 *
 * Class Level Annotations:
 *      @Route - This tells the Vaadin framework what the URL path is 
 *      relative to our base URL. "" is the default route for the 
 *      application.
 *      @PermitAll - Annotation that indicates that this page is available
 *      to all users * who have been  authenticated to the application 
 *      irrespective of Role.
 *      @Menu - This indicates to the Vaadin framework that the view 
 *      should be represented in any menu component for the application
 *      and provides the parameters to order, display, and name the 
 *      menu item.
 * 
 * Sample Output: N/A
 * 
 * Constraints: N/A
 * 
 * Expected Results: 
 *      This class will be used as a data display component for the UI.
 * 
 * Version              Author      Date            Description
 * ***********************************************************************
 *     1                 fjm        20-Oct-2025     Initial Creation
 *     2                 gmb        27-May-2026     Modified
 */
@Route("")
@PermitAll
@Menu(order = 1, icon = "vaadin:clipboard-check", title = "Name List")
public class NameView extends VerticalLayout {

    /**
     * Configure access to data from the database. This is the same
     * NameService that was originally introduced in the Module 2 Lab.
     */
    @Autowired
    private NameService nameService;

    /**
     * NameView - A View to represent data retrieved from a database.
     *          Again, because this is a simple view class, all of the work
     *          occurs in the constructor. Helper methods are not required here.
     * 
     * @param nameServ The NameServices object that provides access to the data
     *        through Spring Data JPA
     */
    public NameView(NameService nameServ) {
    
        /**
         * Setup our data access service.
         */
        this.nameService = nameServ;

        /**
         * Because we are mimicing a database table, we are creating a grid
         * component for the UI. The type of object displayed in the grid will be
         * our Name object. Please Note: There is no need to display all of the
         * columns if that is not desirable. 
         */
        Grid<Name> grid = new Grid<>(Name.class, false);
        grid.addColumn(Name::getFirst).setHeader("First Name");
        grid.addColumn(Name::getMiddle).setHeader("Middle Name");
        grid.addColumn(Name::getLast).setHeader("Last Name");
        grid.addColumn(Name::getSuffix).setHeader("Suffix");

        /**
         * This is where we obtain a list of objects from our Serivce object and 
         * add them as items to the grid. They will be entered in the order they are
         * received from the service, so it may be important to pre-sort the objects
         * within the service or repository calls.
         */
        List<Name> l = nameService.findAll();    
        grid.setItems(l);
        
    /**
     * Email Column
     *
     * Generate an email for each Name in the format:
     * {firstname}.{lastname}@example.com
     *
     * Rules:
     *  - Trim whitespace from first/last names
     *  - Convert to lowercase
     *  - Handle null or empty names safely (use "unknown" when both missing)
     */
    grid.addColumn(NameView::generateEmail).setHeader("Email");
        
        /**
         * This populates the toolabar UI element for this page with a simple label.
         * You could also add other UI components here if you desired to support 
         * filtering or other operations on your page. Adding the Grid to the view
         * is the primary action for this View and enables read only access to the data.
         */
        add(new ViewToolbar("Name List"));
        add(grid);
    }

    /**
     * generateEmail - helper to create an email address from a Name entity.
     *
     * This method trims whitespace, converts to lowercase, and constructs
     * the email as {firstname}.{lastname}@example.com. If both first and
     * last are missing or empty, returns "unknown@example.com".
     *
     * @param n Name entity
     * @return generated email address
     */
    private static String generateEmail(Name n) {
        if (n == null) {
            return "unknown@example.com";
        }

        String first = n.getFirst();
        String last = n.getLast();

        first = (first == null) ? "" : first.trim().toLowerCase();
        last = (last == null) ? "" : last.trim().toLowerCase();

        // Remove internal whitespace to avoid malformed addresses (e.g., "Mary Ann" -> "maryann")
        first = first.replaceAll("\\s+", "");
        last = last.replaceAll("\\s+", "");

        if (first.isEmpty() && last.isEmpty()) {
            return "unknown@example.com";
        }

        // If one side is empty, still produce something like "firstname@example.com" or ".lastname@example.com"
        String localPart;
        if (first.isEmpty()) {
            localPart = last;
        } else if (last.isEmpty()) {
            localPart = first;
        } else {
            localPart = first + "." + last;
        }

        return localPart + "@example.com";
    }
}

