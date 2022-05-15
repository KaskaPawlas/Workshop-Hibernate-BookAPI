package pl.coderslab.workshop.repository;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.workshop.model.Book;

@Qualifier("jpaRepository")
@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
}

