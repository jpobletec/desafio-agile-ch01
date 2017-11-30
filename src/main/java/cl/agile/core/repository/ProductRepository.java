package cl.agile.core.repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import cl.agile.core.model.Product;

@Transactional
public interface ProductRepository extends CrudRepository<Product, Integer>{
}
