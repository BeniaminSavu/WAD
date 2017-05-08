package org.hacktronic.persistence.repository;

import org.hacktronic.persistence.model.RoleModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends CrudRepository<RoleModel, Integer>{

	RoleModel findByRole(String string);

}
