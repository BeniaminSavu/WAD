package org.hacktronic.service;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.model.RoleModel;
import org.hacktronic.persistence.model.TransactionModel;
import org.hacktronic.persistence.model.UserModel;
import org.hacktronic.persistence.model.UserTokenModel;
import org.hacktronic.persistence.repository.RoleRepository;
import org.hacktronic.persistence.repository.UserRepository;
import org.hacktronic.persistence.repository.UserTokenRepository;
import org.hacktronic.service.data.UserFullname;
import org.hacktronic.service.helper.EmailSender;
import org.hacktronic.service.helper.Generator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository userRoleRepository;

	@Autowired
	private UserTokenRepository userTokenRepository;

	@Autowired
	private TransactionService transactionService;

	@Autowired
	private EmailSender emailSender;

	@Autowired
	private Generator tokenGenerator;


	public void createUser(UserModel user) {
		String token = tokenGenerator.generateToken();
		RoleModel role = userRoleRepository.findByRole("ROLE_USER");
		user.setRole(role);

		UserTokenModel userToken = new UserTokenModel();
		userToken.setToken(token);
		userToken.setDate(new Date());
		userTokenRepository.save(userToken);

		userToken = userTokenRepository.findByToken(token);
		user.setUserToken(userToken);
		userRepository.save(user);

		// emailSender.sendMail(user.getEmail(), token);
	}

	public boolean verify(String userToken) {
		UserTokenModel token = userTokenRepository.findByToken(userToken);
		boolean hasExpired = false;
		Date currentDate = new Date();
		long timeElapsed = currentDate.getTime() - token.getDate().getTime();
		if (timeElapsed > 5) {
			hasExpired = true;
		}
		return hasExpired;
	}

	public int getUserId() {
		String username = getUsername();
		return userRepository.findByUsername(username).getId();
	}

	public UserModel findById(int id) {
		return userRepository.findOne(id);
	}

	public Set<ProductModel> getOwnedCourses() {
		Set<ProductModel> products = new HashSet<ProductModel>();
		List<TransactionModel> transactions = transactionService.getPurchesedTransactions();
		for (TransactionModel transaction : transactions) {
			addProducts(products, transaction);
		}
		return products;
	}

	private void addProducts(Set<ProductModel> products, TransactionModel transaction) {
		for (ProductModel product : transaction.getProducts()) {
			products.add(product);
		}
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserFullname getFullName() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		UserModel user = userRepository.findByUsername(auth.getName());
		UserFullname userData = new UserFullname();
		userData.setFirstName(user.getFirstName());
		userData.setLastName(user.getLastName());
		return userData;
	}

}
