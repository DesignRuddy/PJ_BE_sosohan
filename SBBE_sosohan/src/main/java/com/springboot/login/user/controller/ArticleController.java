package com.springboot.login.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.login.user.service.ArticleService;
import com.springboot.login.user.model.Article;

@RestController
@CrossOrigin(origins = "http://localhost:3000/")
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping(value = "insertProcess.do")
	public void insertProcess(Article article) {
		articleService.insert(article);
	}
	
	@RequestMapping(value = "updateProcess.do")
	public void updateProcess(Article article) {
		articleService.update(article);
	}
	
	@RequestMapping(value = "deleteProcess.do")
	public void deleteProcess(Article article) {
		articleService.delete(article);
	}
	
	@RequestMapping(value = "view.do")
	public Article viewArticle() {
		Article article = articleService.select();
		return article;
	}
	
	@RequestMapping(value = "list.do")
	public List<Article> findAll(){
		
		return articleService.findAll();
	}
}
