package pl.lukasz.majcher.spring_first_project.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pl.lukasz.majcher.spring_first_project.data.BooksRepository;
import pl.lukasz.majcher.spring_first_project.models.Book;

@Controller
@RequestMapping("/books")
public class BooksController {

    @Autowired
    private BooksRepository booksData;

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveBook(Book book) {
        if (book != null) {
            booksData.save(book);
        }
        return ("redirect:/books");
    }

    @RequestMapping(value = "/addNew", method = RequestMethod.GET)
    public ModelAndView addNewBook() {
        Book book = new Book();
        return new ModelAndView("addBook", "form", book);
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView books() {
        List<Book> allBooks = booksData.findAll();
        return new ModelAndView("allBooks", "books", allBooks);
    }

    // Changed default site to /books from /books/list
    // @RequestMapping(value = "/list", method = RequestMethod.GET)
    // public ModelAndView books() {
    // List<Book> allBooks = booksData.findAll();
    // return new ModelAndView("allBooks", "books", allBooks);
    // }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteBook(@PathVariable long id) {
        Optional<Book> book = booksData.findById(id);

        if (book != null) {
            booksData.delete(book.get());
        }

        return ("redirect:/books");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editBook(@PathVariable long id) {
        Optional<Book> book = booksData.findById(id);

        if (book != null) {
            return new ModelAndView("editBook", "form", book.get());
        } else {
            return books();
        }
    }
}