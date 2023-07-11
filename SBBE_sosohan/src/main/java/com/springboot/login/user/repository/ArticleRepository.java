package com.springboot.login.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springboot.login.user.model.Article;



@Repository
//JpaReposioty는 CrudRepository를 상속하고 있습니다. 여기서는 List<T> findAll(); 을 사용합니다.
//public interface ArticleRepository extends CrudRepository<Article, Integer> {
public interface ArticleRepository extends JpaRepository<Article, Integer> {
	
	Article findTopByOrderByArticleIdDesc();
	
	Article save(Article article);
	
	void delete(Article article);
	
	

}
