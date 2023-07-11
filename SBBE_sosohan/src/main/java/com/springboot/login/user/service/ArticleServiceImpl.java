package com.springboot.login.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.springboot.login.user.model.Article;
import com.springboot.login.user.repository.ArticleRepository;


@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	
	@Autowired
	private ArticleRepository dao;

	@Override
	public void insert(Article article) {
		dao.save(article);		
	}

	@Override
	public void update(Article article) {
		Article currArticle = dao.findTopByOrderByArticleIdDesc();
		currArticle.setArticleTitle(article.getArticleTitle());
		currArticle.setArticleContent(article.getArticleContent());
		dao.save(currArticle);
	}

	@Override
	public void delete(Article article) {
		dao.delete(article);		
	}

	@Override
	public Article select() {		
		return dao.findTopByOrderByArticleIdDesc();
	}

	@Override  //글목록 리스트 처리 메소드()
	public List<Article> findAll() {
		return (List<Article>)dao.findAll(Sort.by(Sort.Direction.DESC,"articleId"));
		//article_id 기준으로 내림차순 정렬
		
	}
}
