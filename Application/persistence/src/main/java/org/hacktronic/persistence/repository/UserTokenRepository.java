package org.hacktronic.persistence.repository;

import org.hacktronic.persistence.model.UserTokenModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserTokenRepository extends CrudRepository<UserTokenModel, Integer>{

	UserTokenModel findByToken(String token);

}
