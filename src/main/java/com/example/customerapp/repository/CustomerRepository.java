package com.example.customerapp.repository;

import com.example.customerapp.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

    // Find customer by email
    Optional<Customer> findByEmail(String email);

    // Find customers by name containing (case insensitive)
    List<Customer> findByNameContainingIgnoreCase(String name);

    // Custom query to find customers by phone
    @Query("SELECT c FROM Customer c WHERE c.phone = :phone")
    List<Customer> findByPhone(@Param("phone") String phone);

    // Count total customers
    long count();
}
