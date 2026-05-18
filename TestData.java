package com.snhu.mscs.cs600.module5;

/**
 * TestData - 
 * 
 * Purpose:
 *      The purpose of this interface is to provide sample
 *      data to be used in testing the application. This interface 
 *      would not be used to hold data in a production application.
 * 
 * Sample Output: N/A
 * 
 * Constraints: N/A
 * 
 * Expected Results: N/A
 * 
 * Version              Author      Date            Description
 * ***********************************************************************
 *     1                 fjm        29-Sep-2025     Initial Creation
 */
public interface TestData {

    /**
     * book_list - This is an array of Book objects used as test data for
     * the module 5 assignment.This is provided so that the focus of the assingment
     * is building the interface, not any other associated code.
     */
    public Book[] book_list = 
    {
          new Book("Pride and Prejudice","Jane Austen",1813),
          new Book("To Kill a Mockingbird","Harper Lee",1960),
          new Book("The Great Gatsby","F. Scott Fitzgerald",1925),
          new Book("One Hundred Years of Solitude","Gabriel García Márquez",1967),
          new Book("In Cold Blood","Truman Capote",1965),
          new Book("Wide Sargasso Sea","Jean Rhys",1966),
          new Book("Brave New World","Aldous Huxley",1932),
          new Book("I Capture The Castle","Dodie Smith",1948),
          new Book("Jane Eyre","Charlotte Bronte",1847),
          new Book("Crime and Punishment","Fyodor Dostoevsky",1866),
          new Book("The Secret History","Donna Tartt",1992),
          new Book("The Call of the Wild","Jack London",1903),
          new Book("The Chrysalids","John Wyndham",1955),
          new Book("Persuasion","Jane Austen",1818),
          new Book("Moby-Dick","Herman Melville",1851),
          new Book("The Lion, the Witch and the Wardrobe","C.S. Lewis",1950),
          new Book("To the Lighthouse","Virginia Woolf",1927),
          new Book("The Death of the Heart","Elizabeth Bowen",1938),
          new Book("Tess of the d'Urbervilles","Thomas Hardy",1891),
          new Book("Frankenstein","Mary Shelley",1823),
          new Book("The Master and Margarita","Mikhail Bulgakov",1966),
          new Book("The Go-Between","L. P. Hartley",1953),
          new Book("One Flew Over the Cuckoo's Nest","Ken Kesey",1962),
          new Book("Nineteen Eighty-Four","George Orwell",1949),
          new Book("Buddenbrooks","Thomas Mann",1901),
          new Book("The Grapes of Wrath","John Steinbeck",1939),
          new Book("Beloved","Toni Morrison",1987),
          new Book("The Code of the Woosters","P. G. Wodehouse",1938),
          new Book("Dracula","Bram Stoker",1897),
          new Book("The Lord of the Rings","J. R. R. Tolkien",1954),
          new Book("The Adventures of Huckleberry Finn","Mark Twain",1884),
          new Book("Great Expectations","Charles Dickens",1860),
          new Book("Catch-22","Joseph Heller",1961),
          new Book("The Age of Innocence","Edith Wharton",1920),
          new Book("Things Fall Apart","Chinua Achebe",1958),
          new Book("Middlemarch","George Eliot",1871),
          new Book("Midnight's Children","Salman Rushdie",1981),
          new Book("The Iliad","Homer",1488),
          new Book("Vanity Fair","William Makepeace Thackeray",1847),
          new Book("Brideshead Revisited","Evelyn Waugh",1945),
          new Book("The Catcher in the Rye","J.D. Salinger",1951),
          new Book("Alice’s Adventures in Wonderland","Lewis Carroll",1865),
          new Book("The Mill on the Floss","George Eliot",1860),
          new Book("Barchester Towers","Anthony Trollope",1857),
          new Book("Another Country","James Baldwin",1962),
          new Book("Les Miserables","Victor Hugo",1862),
          new Book("Charlie and the Chocolate Factory","Roald Dahl",1964),
          new Book("The Outsiders","S. E. Hinton",1967),
          new Book("The Count of Monte Cristo","Alexandre Dumas",1844),
          new Book("Ulysses","James Joyce",1922),
          new Book("East of Eden","John Steinbeck",1952),
          new Book("The Brothers Karamazov","Fyodor Dostoyevsky",1880),
          new Book("Lolita","Vladimir Nabokov",1955),
          new Book("The Secret Garden","Frances Hodgson Burnett",1911),
          new Book("Scoop","Evelyn Waugh",1938),
          new Book("A Tale of Two Cities","Charles Dickens",1859),
          new Book("Diary of a Nobody","George Grossmith and Weedon Grossmith",1892),
          new Book("Anna Karenina","Leo Tolstoy",1878),
          new Book("The Betrothed","Alessandro Manzoni",1827),
          new Book("Orlando","Virginia Woolf",1928),
          new Book("Atlas Shrugged","Ayn Rand",1957),
          new Book("The Time Machine","H. G. Wells",1895),
          new Book("The Art of War","Sun-Tzu",1782 ),
          new Book("The Forsyte Saga","John Galsworthy",1922),
          new Book("Travels with Charley","John Steinbeck",1962),
          new Book("Tropic of Cancer","Henry Miller",1934),
          new Book("Women in Love","D. H. Lawrence",1920),
          new Book("Staying On","Paul Scott",1977),
          new Book("The Wind in the Willows","Kenneth Grahame",1908),
          new Book("My Ántonia","Willa Cather",1918),
          new Book("Wuthering Heights","Emily Brontë",1847),
          new Book("Perfume","Patrick Süskind",1985),
          new Book("War and Peace","Leo Tolstoy",1867),
          new Book("Of Human Bondage","Somerset Maugham",1915),
          new Book("Bleak House","Charles Dickens",1853),
          new Book("Lost Illusions","Honoré de Balzac",1837),
          new Book("Breakfast of Champions","Kurt Vonnegut",1973),
          new Book("A Christmas Carol","Charles Dickens",1843),
          new Book("Silas Marner","George Eliot",1861),
          new Book("Mrs Dalloway","Virginia Woolf",1925),
          new Book("Little Women","Louisa May Alcott",1868),
          new Book("The Sea, The Sea","Iris Murdoch",1978),
          new Book("The Godfather","Mario Puzo",1969),
          new Book("The Castle","Franz Kafka",1926),
          new Book("I, Claudius","Robert Graves",1934),
          new Book("Peter Pan","J.M. Barrie",1904),
          new Book("A Confederacy of Dunces","John Kennedy Toole",1980),
          new Book("The Razor's Edge","W. Somerset Maugham",1944),
          new Book("Lark Rise to Candleford","Flora Thompson",1939),
          new Book("The Return of the Native","Thomas Hardy",1878),
          new Book("A Portrait of the Artist as a Young Man","James Joyce",1916),
          new Book("Heart of Darkness","Joseph Conrad",1902),
          new Book("North and South","Elizabeth Gaskell",1854),
          new Book("The Handmaid's Tale","Margaret Atwood",1985),
          new Book("Suite Francaise","Irene Nemirovsky",2004),
          new Book("One Day in the Life of Ivan Denisovich","Alexander Solzhenitsyn",1962),
          new Book("What A Carve Up!","Jonathan Coe",1994),
          new Book("Zen and the Art of Motorcycle Maintenance","Robert Pirsig",1974),
          new Book("White Nights","Fyodor Dostoyevsky",1848),
          new Book("Hard Times","Charles Dickens",1854)
    };

}
