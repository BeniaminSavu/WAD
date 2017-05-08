package org.hacktronic.persistence.repository;

import org.hacktronic.persistence.model.CommentModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentRepository extends CrudRepository<CommentModel, Integer>{

}
