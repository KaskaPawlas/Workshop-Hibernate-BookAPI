package pl.coderslab.workshop.service;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.workshop.model.Book;
import pl.coderslab.workshop.repository.BookRepository;

import java.util.List;

@Service
@Primary
public class JpaBookService implements BookService{

    private final BookRepository bookRepository;

    public JpaBookService(@Qualifier("jpaRepository") BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @Override
    public Book getBookById(Long id) {
        return bookRepository.getOne(id);
    }

    @Override
    public void addBook(Book bookToAdd) {
        bookRepository.save(bookToAdd);
    }

    @Override
    public void editBook(Book bookToEdit) {
        bookRepository.save(bookToEdit);
    }

    @Override
    public void deleteBook(Long id) {
        bookRepository.deleteById(id);
    }

    @Override
    public List<Book> findAllBooks() {
        return bookRepository.findAll();
    }
}
