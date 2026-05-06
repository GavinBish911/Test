package com.snhu.mscs.cs600.module3;

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
     * book_list - This is an array of Strings listing a book title, the
     * associated author, and the year it was first published. This array
     * is meant to be used to test the API for the application and contrast
     * with reading data out of a database with a successful module2 
     * implementation.
     */
    public String[] book_list = {
        "Pride and Prejudice by Jane Austen published in 1813",
        "To Kill a Mockingbird by Harper Lee published in 1960",
        "The Great Gatsby by F. Scott Fitzgerald published in 1925",
        "One Hundred Years of Solitude by Gabriel García Márquez published in 1967",
        "In Cold Blood by Truman Capote published in 1965",
        "Wide Sargasso Sea by Jean Rhys published in 1966",
        "Brave New World by Aldous Huxley published in 1932",
        "I Capture The Castle by Dodie Smith published in 1948",
        "Jane Eyre by Charlotte Bronte published in 1847",
        "Crime and Punishment by Fyodor Dostoevsky published in 1866",
        "The Secret History by Donna Tartt published in 1992",
        "The Call of the Wild by Jack London published in 1903",
        "The Chrysalids by John Wyndham published in 1955",
        "Persuasion by Jane Austen published in 1818",
        "Moby-Dick by Herman Melville published in 1851",
        "The Lion, the Witch and the Wardrobe by C.S. Lewis published in 1950",
        "To the Lighthouse by Virginia Woolf published in 1927",
        "The Death of the Heart by Elizabeth Bowen published in 1938",
        "Tess of the d'Urbervilles by Thomas Hardy published in 1891",
        "Frankenstein by Mary Shelley published in 1823",
        "The Master and Margarita by Mikhail Bulgakov published in 1966",
        "The Go-Between by L. P. Hartley published in 1953",
        "One Flew Over the Cuckoo's Nest by Ken Kesey published in 1962",
        "Nineteen Eighty-Four by George Orwell published in 1949",
        "Buddenbrooks by Thomas Mann published in 1901",
        "The Grapes of Wrath by John Steinbeck published in 1939",
        "Beloved by Toni Morrison published in 1987",
        "The Code of the Woosters by P. G. Wodehouse published in 1938",
        "Dracula by Bram Stoker published in 1897",
        "The Lord of the Rings by J. R. R. Tolkien published in 1954",
        "The Adventures of Huckleberry Finn by Mark Twain published in 1884",
        "Great Expectations by Charles Dickens published in 1860",
        "Catch-22 by Joseph Heller published in 1961",
        "The Age of Innocence by Edith Wharton published in 1920",
        "Things Fall Apart by Chinua Achebe published in 1958",
        "Middlemarch by George Eliot published in 1871",
        "Midnight's Children by Salman Rushdie published in 1981",
        "The Iliad by Homer published in 8th century BC",
        "Vanity Fair by William Makepeace Thackeray published in 1847",
        "Brideshead Revisited by Evelyn Waugh published in 1945",
        "The Catcher in the Rye by J.D. Salinger published in 1951",
        "Alice’s Adventures in Wonderland by Lewis Carroll published in 1865",
        "The Mill on the Floss by George Eliot published in 1860",
        "Barchester Towers by Anthony Trollope published in 1857",
        "Another Country by James Baldwin published in 1962",
        "Les Miserables by Victor Hugo published in 1862",
        "Charlie and the Chocolate Factory by Roald Dahl published in 1964",
        "The Outsiders by S. E. Hinton published in 1967",
        "The Count of Monte Cristo by Alexandre Dumas published in 1844",
        "Ulysses by James Joyce published in 1922",
        "East of Eden by John Steinbeck published in 1952",
        "The Brothers Karamazov by Fyodor Dostoyevsky published in 1880",
        "Lolita by Vladimir Nabokov published in 1955",
        "The Secret Garden by Frances Hodgson Burnett published in 1911",
        "Scoop by Evelyn Waugh published in 1938",
        "A Tale of Two Cities by Charles Dickens published in 1859",
        "Diary of a Nobody by George Grossmith and Weedon Grossmith published in 1892",
        "Anna Karenina by Leo Tolstoy published in 1878",
        "The Betrothed by Alessandro Manzoni published in 1827",
        "Orlando by Virginia Woolf published in 1928",
        "Atlas Shrugged by Ayn Rand published in 1957",
        "The Time Machine by H. G. Wells published in 1895",
        "The Art of War by Sun-Tzu published in 1782",
        "The Forsyte Saga by John Galsworthy published in 1922",
        "Travels with Charley by John Steinbeck published in 1962",
        "Tropic of Cancer by Henry Miller published in 1934",
        "Women in Love by D. H. Lawrence published in 1920",
        "Staying On by Paul Scott published in 1977",
        "The Wind in the Willows by Kenneth Grahame published in 1908",
        "My Ántonia by Willa Cather published in 1918",
        "Wuthering Heights by Emily Brontë published in 1847",
        "Perfume by Patrick Süskind published in 1985",
        "War and Peace by Leo Tolstoy published in 1867",
        "Of Human Bondage by Somerset Maugham published in 1915",
        "Bleak House by Charles Dickens published in 1853",
        "Lost Illusions by Honoré de Balzac published in 1837",
        "Breakfast of Champions by Kurt Vonnegut published in 1973",
        "A Christmas Carol by Charles Dickens published in 1843",
        "Silas Marner by George Eliot published in 1861",
        "Mrs Dalloway by Virginia Woolf published in 1925",
        "Little Women by Louisa May Alcott published in 1868",
        "The Sea, The Sea by Iris Murdoch published in 1978",
        "The Godfather by Mario Puzo published in 1969",
        "The Castle by Franz Kafka published in 1926",
        "I, Claudius by Robert Graves published in 1934",
        "Peter Pan by J.M. Barrie published in 1904",
        "A Confederacy of Dunces by John Kennedy Toole published in 1980",
        "The Razor's Edge by W. Somerset Maugham published in 1944",
        "Lark Rise to Candleford by Flora Thompson published in 1939",
        "The Return of the Native by Thomas Hardy published in 1878",
        "A Portrait of the Artist as a Young Man by James Joyce published in 1916",
        "Heart of Darkness by Joseph Conrad published in 1902",
        "North and South by Elizabeth Gaskell published in 1854",
        "The Handmaid's Tale by Margaret Atwood published in 1985",
        "Suite Francaise by Irene Nemirovsky published in 2004",
        "One Day in the Life of Ivan Denisovich by Alexander Solzhenitsyn published in 1962",
        "What A Carve Up! by Jonathan Coe published in 1994",
        "Zen and the Art of Motorcycle Maintenance by Robert Pirsig published in 1974",
        "White Nights by Fyodor Dostoyevsky published in 1848",
        "Hard Times by Charles Dickens published in 1854"
    };
    
}
