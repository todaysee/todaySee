package com.todaySee.admin.persistence;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.todaySee.domain.ContentGenre;
import com.todaySee.domain.ContentOtt;

@Repository
public class TransactionalRepository {

	@PersistenceContext
    private EntityManager entityManager;
	
	
	@Transactional
	public void genreQuery(ContentGenre genre) {
		entityManager.createNamedQuery("INSERT INTO contentgenre (genre_number,content_number) VALUES (? ,(SELECT max(last_insert_id(content_number)) FROM content))")
			.setParameter(1, genre)
			.executeUpdate();
		
		
	}
	@Transactional
	public void ottQuery(ContentOtt ott,String contentottLink) {
		entityManager.createNativeQuery("INSERT INTO contentott (ott_number, content_number,contentott_link) VALUES (? ,(SELECT max(last_insert_id(content_number)) FROM content),?)")
			.setParameter(1, ott)
			.setParameter(2, contentottLink)
			.executeUpdate();
	}
}
