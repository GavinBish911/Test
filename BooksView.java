package com.snhu.mscs.cs600.module5.ui;

import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

import com.snhu.mscs.cs600.module5.Book;
import com.snhu.mscs.cs600.module5.TestData;

@Route(value = "books", layout = MainLayout.class)
@PageTitle("Books List")
public class BooksView extends VerticalLayout implements TestData {

    public BooksView() {
        setSizeFull();
        setPadding(true);
        setSpacing(true);

        H2 heading = new H2("Books List");

        Grid<Book> grid = new Grid<>(Book.class, false);
        grid.addColumn(Book::getTitle).setHeader("Title").setAutoWidth(true);
        grid.addColumn(Book::getAuthor).setHeader("Author").setAutoWidth(true);
        grid.addColumn(Book::getYear).setHeader("Year").setAutoWidth(true);

        grid.setItems(java.util.Arrays.asList(book_list));
        grid.setSizeFull();
        grid.setSelectionMode(Grid.SelectionMode.NONE);

        add(heading, grid);
        expand(grid);
    }
}
