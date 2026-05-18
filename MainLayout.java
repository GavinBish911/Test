package com.snhu.mscs.cs600.module5.ui;

import com.vaadin.flow.component.applayout.AppLayout;
import com.vaadin.flow.component.dependency.CssImport;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.html.H1;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.FlexComponent;
import com.vaadin.flow.router.RouterLink;
import com.vaadin.flow.component.sidenav.SideNav;
import com.vaadin.flow.component.sidenav.SideNavItem;

@CssImport("/styles/shared-styles.css")
public class MainLayout extends AppLayout {

    public MainLayout() {
        createHeader();
        createDrawer();
    }

    private void createHeader() {
        // larger logo for the left side
        Image logo = new Image("/logo.svg", "Module5 logo");
        logo.setHeight("36px");

        // small inline icon to place next to the title
        Image icon = new Image("/logo.svg", "M");
        icon.setHeight("20px");
        icon.getStyle().set("margin-right", "8px");

        H1 appName = new H1("Module5");
        appName.getStyle().set("font-size", "var(--lumo-font-size-l)");
        appName.getStyle().set("margin", "0");

        // brand layout contains the small icon and the app title
        HorizontalLayout brand = new HorizontalLayout(icon, appName);
        brand.setAlignItems(FlexComponent.Alignment.CENTER);
        brand.getStyle().set("margin", "0");

        Span user = new Span("Gavin Bish");

        HorizontalLayout header = new HorizontalLayout(logo, brand, user);
        header.setWidthFull();
        header.expand(brand);
        header.setAlignItems(FlexComponent.Alignment.CENTER);

        addToNavbar(header);
    }

    private void createDrawer() {
        SideNav sideNav = new SideNav();
    SideNavItem booksItem = new SideNavItem("Books", BooksView.class);
        sideNav.addItem(booksItem);
        addToDrawer(sideNav);
    }
}
