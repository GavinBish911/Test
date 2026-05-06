package com.snhu.mscs.cs600.module3;

// Imports necessary to enable the SpringBoot Application environment
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Module3Application - 
 * 
 * Purpose:
 *      The purpose of this class is to provide the startup sequence
 *              for the SpringBoot application. The annotation used demarks
 *              this class as being the entry point for SpringBoot and it 
 *              runs this application as a thread.              
 * 
 * Sample Output: N/A
 * 
 * Constraints: N/A
 * 
 * Expected Results:
 *              The application is run via Maven from the command line with:
 *                      mvn spring-boot:run
 *              or from the SpringBoot Dashboard in VSCode (the hexagon icon
 *              with the power-button symbol on the left-hand toolbar).
 * 
 * Version              Author      Date            Description
 * ***********************************************************************
 *     1                 fjm        6-Oct-2025     Initial Creation
 */
@SpringBootApplication
public class Module3Application {
    /**
     * main - Method used to initialize the SpringBoot application
     * environment.
     * 
     * @param args Array of Strings used to pass arguments to the function.
     *                      However, this is not used in this application.
     */
	public static void main(String[] args) {
		SpringApplication.run(Module3Application.class, args);
	}

}
