package com.RaiderTrade.api.Repository;

import com.RaiderTrade.api.Model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepository extends PagingAndSortingRepository<Book, Integer> {
   Book findById(int id);

   Page<Book> findByBookName(String bookName, Pageable pageable);

   @Query(value = "SELECT b FROM Book b WHERE b.bookName LIKE %?1% ORDER BY bookName")
   Page<Book> findByNameContaining(String bookName, Pageable pageable);

}
