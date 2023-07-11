<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>

               <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Modify</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                      <div class="panel-heading">Board Modify Page</div>                      
                      <div class="panel-body">
                      <form action="/board/modify" method="post" role="form">
                      
                       <!-- 318, 319page 파라미터 추가 코딩 -->
                       <input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}" />">
                       <input type="hidden" name="amount" value="<c:out value="${cri.amount}" />">
                       
                       <!-- Page346 : 수정 페이지에서 검색 처리 아래줄 2줄 소스 추가 적용 -->
                  	   <input name="pageNum" type="hidden" value="<c:out value ="${cri.pageNum}"/>" />
					   <input name="amount" type="hidden" value="<c:out value ="${cri.amount}"/>" />
                      
                      
                      <div class="form-group">
                          <label>Bno</label>
                          <input class="form-control" name="bno" 
                          value='<c:out value="${board.bno}" />' readonly="readonly">                       
                       </div>
                       <div class="form-group">
                          <label>Title</label>
                          <input class="form-control" name="title" 
                          value='<c:out value="${board.title}" />'>                       
                       </div>                       
                       <div class="form-group">
                          <label>Content</label>
                          <textarea class="form-control" rows="3" 
                          name="content"><c:out value="${board.content}" /></textarea>
                       </div>
                       <div class="form-group">
                          <label>Writer</label>
                          <input class="form-control" name="writer" 
                          value='<c:out value="${board.writer}" />' readonly="readonly">                                                 
                       </div>  
                       <div class="form-group">
                          <label>RegDate</label>
                          <input class="form-control" name="regdate" value=
                          '<fmt:formatDate value="${board.regdate}" pattern="yyyy/MM/dd" />
                          ' readonly="readonly">                                                
                       </div>  
                       <div class="form-group">
                          <label>UpdateDate</label>
                          <input class="form-control" name="updateDate" value=
                          '<fmt:formatDate value="${board.updateDate}" pattern="yyyy/MM/dd" />
                          ' readonly="readonly">                                                
                       </div>  
                       
                       <div class="form-group">
                          <label>Content</label>
                          <textarea class="form-control" rows="3" 
                          name="photo"><c:out value="${board.photoFileName}" /></textarea>
                       </div>

                       <button data-oper='modify' class="btn btn-default">글내용 수정!</button>
                       <button data-oper='remove' class="btn btn-danger">글삭제 버튼!</button>
                       <button data-oper='list' class="btn btn-info">글목록 조회로 Go!</button>                       
                       </form>
                       </div>
                       <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <script type="text/javascript">
            	$(document).ready(function() {
					var formObj = $("form");
					// Javascript에서 button 태그의 'data-oper'속성을
					// 이용해서 원하는 기능을 동작하도록 처리합니다.
					$('button').on("click", function(e) {
						// form 태그의 모든 버튼은 기본적으로 submit으로
						// 처리하기 때문에 e.preventDefault() 메서드로
						// 기본 동작을 제한하고,
						e.preventDefault();
						
						var operation = $(this).data("oper");
						
						console.log(operation);
						
						if(operation === 'remove'){
							formObj.attr("action", "/board/remove");
						} else if (operation === 'list') {
							// move to list : 수정 페이지(modify.jsp)에서
							// 사용자가 다시 목록 페이지로 이동할 수 있도록
							// Javascript를 다음과 같이 조금 수정합니다.
							// 수정된 내용은 클릭한 버튼이 List인 경우 action 속성과 method 속성을
        				    // 변경합니다. '/board/list'로의 이동은 아무런 파라미터가 없기 때문에
        				    // form 태그의 모든 내용은 삭제한 상태에서 submit()을 진행합니다.
							formObj.attr("action","/board/list")
							.attr("method","get");
							// 만약 사용자가 data-oper 속성의 "글목록 조회로 "GO!" 버튼을 클릭한다면
							// form 태그에서  부분만 잠시 복사(clone)해서 보관해 두고, form 태그 내의
							// 모든 내용은 지워서 초기화 합니다.(empty). 
							// 이후에 다시 필요한 태그만들만 추가해서(append) '/board/list' 를 호출하는 형태를 이용합니다.
							var pageNumTag = $("input[name='pageNum']").clone();
							var amountTag = $("input[name='amount']").clone();
							var keywordTag = $("input[name='keyword']").clone();
							var typeTag = $("input[name='type']").clone();
							
							formObj.empty();
							formObj.append(pageNumTag);
							formObj.append(amountTag);
							formObj.append(keywordTag);
							formObj.append(typeTag);
						}
						// 마지막에 직접 submit()메서드를 처리합니다.
						formObj.submit();  
					});            		
				});            
            </script>
            
            
            
            
<%@ include file="../includes/footer.jsp" %>