package cl.agile.core.controller;

import cl.agile.core.services.ProductService;
import cl.agile.core.model.Product;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Agile
 * Clase encargada de resolver las urls bajo el prefijo '/portal/api'
 *
 */
@RestController
@RequestMapping(value="/portal/api")

public class APIController {

    @Autowired
    private ProductService productService;


    @RequestMapping(value = "/products", method = RequestMethod.GET)
    public Iterable<Product> list(Model model){
        
        return productService.listAllProducts();
    }


    @RequestMapping("product/{id}")
    public Product showProduct(@PathVariable Integer id){
       
        return productService.getProductById(id);
    }

    @RequestMapping("product/edit/{id}")
    public Product edit(@PathVariable Integer id){
        
        return productService.getProductById(id);
    }


    @PostMapping("product/new")
    public Product newProduct(@Valid @RequestBody Product product){
    	return productService.saveProduct(product);
    }



    @DeleteMapping("product/delete/{id}")
    public void delete(@PathVariable Integer id){
    	productService.deleteProduct(id);
        
    }

}
