package pl.lukasz.majcher.spring_first_project.data;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.lukasz.majcher.spring_first_project.models.Book;

public interface BooksRepository extends JpaRepository<Book, Long> {

}
