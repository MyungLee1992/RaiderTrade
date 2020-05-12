package com.RaiderTrade.api.Repository;

import com.RaiderTrade.api.Model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {
   Book findById(int id);

}
