package com.springboot.login.user.service;

import java.util.List;

import com.springboot.login.user.model.Article;



public interface ArticleService {

	void insert(Article article);
	
	void update(Article article);
	
	void delete(Article article);
	
	Article select();
	
	List<Article> findAll();
	
}
