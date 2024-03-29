package com.aulaapi.Api.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.aulaapi.Api.entidades.Local;

@Repository
public interface LocalRepository extends JpaRepository<Local, Long> {

}
