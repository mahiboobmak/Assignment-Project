package assignment.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import org.springframework.stereotype.Component;

import assignment.dto.AssignmentDto;

@Component
public class AssignmentDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("dev");
	EntityManager manager = factory.createEntityManager();
	EntityTransaction transaction = manager.getTransaction();

	public void signup(AssignmentDto d1) {
		transaction.begin();
		manager.persist(d1);
		transaction.commit();

	}

	public AssignmentDto login(String email) {

		AssignmentDto d1 = manager.find(AssignmentDto.class, email);
		return d1;
	}

	public AssignmentDto fetchbyId(String email) {
       System.out.println(email);
       AssignmentDto assignmentDto=manager.find(AssignmentDto.class, email);
       return assignmentDto;
	}

}
