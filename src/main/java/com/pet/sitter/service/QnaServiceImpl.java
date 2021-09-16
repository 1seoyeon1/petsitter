package com.pet.sitter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.pet.sitter.dao.QnaDAO;
import com.pet.sitter.vo.QnaVO;
import com.pet.sitter.vo.SearchCriteria;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Inject
	private QnaDAO dao;

	//qna 작성
	@Override
	public void qnaWrite(QnaVO qnaVO) throws Exception {
		dao.qnaWrite(qnaVO);
	}

	//qna 목록 조회
	@Override
	public List<QnaVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	//qna 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}
	
	//qna 읽기
	@Override
	public QnaVO qnaRead(int qno) throws Exception {
		return dao.qnaRead(qno);
	}

	//qna 수정
	@Override
	public void qnaUpdate(QnaVO qnaVO) throws Exception {
		dao.qnaUpdate(qnaVO);
	}

	//qna 삭제
	@Override
	public void qnaDelete(int qno) throws Exception {
		dao.qnaDelete(qno);
	}


	

}
