<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>
    
    <link href="/resources/header/header.css" rel="stylesheet">
    <link href="/resources/footer/footer.css" rel="stylesheet">
    
     <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
</head>

  <div id="page-wrapper">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">꿀팁공유</h1>
	</div>
	
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Board List Page
				<button id="regBtn" type="button" class="btn btn-xs pull-right">Register
					New Board</button>
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<table width="100%"
					class="table table-striped table-bordered table-hover"
					id="dataTables-example">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정일</th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="board">
						<tr>
							<td><c:out value="${board.bno}" /></td>
							<td>
								<a class="move" href="<c:out value="${board.bno}" />"
								target="_blank">
									<c:out value="${board.title}" />
								</a>
							</td>
							<td><c:out value="${board.writer}" /></td>
							<td><fmt:formatDate value="${board.regdate}"
									pattern="yyyy-MM-dd" /></td>
							<td><fmt:formatDate value="${board.updateDate}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
				<!-- table 태그의 끝! -->
				
				<div class="row">
					<div class="col-lg-12">
						<form action="/board/list" method="get" id="searchForm">
							<select name="type">
								<option value="" 
								<c:out value="${pageMaker.cri.type == null?'selected':''}" />>---</option>
								<option value="T"  
								<c:out value="${pageMaker.cri.type eq'T'?'selected':''}" />>제목</option>
								<option value="C"  
								<c:out value="${pageMaker.cri.type eq'C'?'selected':''}" />>내용</option>
								<option value="W"  
								<c:out value="${pageMaker.cri.type eq'W'?'selected':''}" />>작성자</option>
								<option value="TC"  
								<c:out value="${pageMaker.cri.type eq'TC'?'selected':''}" />>제목 또는 내용</option>
								<option value="TW" 
								<c:out value="${pageMaker.cri.type eq'TW'?'selected':''}" />>제목 또는 작성자</option>
								<option value="TCW"  
								<c:out value="${pageMaker.cri.type eq'TCW'?'selected':''}" />>제목 또는 내용 또는 작성자</option>
							</select>
							<input type="text" name="keyword" 
							value= "<c:out value="${pageMaker.cri.keyword}" />"  />
							<input name="pageNum" type="hidden" value= "<c:out value="${pageMaker.cri.pageNum}" />">
							<input name="amount" type="hidden"  value= "<c:out value="${pageMaker.cri.amount}" />">
							
							<button class="btn btn-info">검색 Search</button>
						</form>
					</div>
				</div>
				<!-- [중요 : pages 폴더에서 tables.html 우클릭
				 - Run On Server - F12 - 우측 하단 페이지 네이션(pagination 클래스) 요소 선택 - pagination 클래스 소스 위에서 마우스 우클릭 -
- Edit as HTML 클릭 - 소스 복사해서 list.jsp 안에 </table> 밑에 복사 붙여넣기 해서 넣어줌] -->
				<!-- Ctrl + Shift + F -->
				<div class="pull-right">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a href="${pageMaker.startPage - 1}">Previous</a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active" : ""}"><a href="${num}">${num}</a></li>		
						</c:forEach>
						<c:if test="${pageMaker.next}">				
							<li class="paginate_button next"><a href="${pageMaker.endPage + 1}">Next</a></li>
						</c:if>
					</ul>
				</div>
				<!-- end Pagination -->
				
				<!-- Page 311 윗부분 내용 소스 코딩 시작  -->
				<form id="actionForm" action="/board/list" method="get">
					<input name="pageNum" type="hidden" value="${pageMaker.cri.pageNum}">
					<input name="amount" type="hidden"  value="${pageMaker.cri.amount}">				
					<!-- 344p : 검색 조건과 키워드에 대한 처리를 아래와 같이 하면 , 검색 후 페이지를 이동해서 동일한 검색 사항들이 계속 유지되게 할 수 있음 -->
					<input type="hidden" name="type" value="<c:out value="${pageMaker.cri.type}" />" />	
					<input type="hidden" name="keyword" value="<c:out value="${pageMaker.cri.type}" />" />	
				</form>
				<!-- Page 311 윗부분 내용 소스 코딩 끝  -->
								
				<!-- Modal 추가 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Modal title</h4>
							</div>
							<div class="modal-body">처리가 완료되었습니다!</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->

			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /.panel-body -->
	</div>
	<!-- /.panel -->
</div>
<!-- /.col-lg-6 -->
</div>
<!-- /.row -->

<%@ include file="../includes/footer.jsp" %>



<script type="text/javascript">
	$(document).ready(
			function() {
				var result = '<c:out value="${result}" />';

				// 모달창 관련 자바스크립트 소스 코딩(시작)	
				// checkModal() 함수는 파라미터에 따라서 모달창을 보여주거나 내용을 수정한 뒤
				// 보이도록 처리합니다. checkModal()에서는 새로운 게시글이 작성되는 경우
				// RedirectAttributes로 게시물의 번호가 전송되므로 이를 이용해서 모달창의 내용을
				// 수정 처리합니다. $("#modal").modal('show')를 호출하면 모달창이 보이게 됩니다.
				// 실행 확인은 웹 프로젝트 실행 후 '/board/register'를 이용해서 새로운 게시물을 작성하고
				// 나면 자동으로 '/board/list'로 이동하면서 모달창이 보이게 됩니다.		
				checkModal(result);

				// history 객체를 활용하여 글등록 후에
				// 모달창이 필요하지 않다는 표시를 해줍니다.
				history.replaceState({}, null, null);

				function checkModal(result) {
					if (result === '') {
						return;
					}

					if (parseInt(result) > 0) {
						$(".modal-body").html(
								"게시글 " + parseInt(result) + " 번이 등록 되었습니다!");
					}
					$("#myModal").modal("show");
				}
				// 모달창 관련 자바스크립트 소스 코딩(종료)

				// list.jsp에서 Register New Board 버튼 클릭하면
				// 게시물의 등록 웹페이지로 이동 처리 합니다.
				$("#regBtn").on("click", function() {
					self.location = "/board/register";
				});
				
				var actionForm = $("#actionForm");
				
				$(".paginate_button a").on("click", function(e) {
					e.preventDefault();
					console.log('click');
					actionForm.find("input[name='pageNum']").val($(this).attr("href"));
					actionForm.submit();
				});
				
				$(".move").on("click", function(e) {
					e.preventDefault();
					actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
					actionForm.attr("action", "/board/get");
					actionForm.submit();
				});
				
				// 342p 검색 버튼의 이벤트 처리
				// 웹 브라우저에서 검색 버튼을 클릭하면 form 태그의 전송은 막고 페이지의 번호는 1이 되도록 수정
				// 화면에서 키워드가 없다면 검색을 하지 않도록 제어
				
				var searchForm = $("#searchForm");
				
				$("#searchForm button").on("click", function(e){
					
					if (!searchForm.find("option:selected").val()) {
						alert("검색 종류를 선택해주세요!");
						return false;
					}
					
					if (!searchForm.find("input[name='keyword']").val()) {
						alert("검색어를 입력해주세요!");
						return false;
					}
					
					searchForm.find("input[name='pageNum']").val("1");
					e.preventDefault();
					
					searchForm.submit();
				});
			});
</script>

</div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
    	
    	// 기존에 아이디가 dataTables-example에 적용된 데이터 테이블 해제
    	// $('#dataTables-example').DataTable({
        //   responsive: true
        // });
        
    	// jQuery의 최신 버전을 사용한 상태에서 모바일 크기에서
        // '새로고침'시 메뉴가 펼쳐지는 문제 해결을 위해서 다음의 3줄 코딩을 추가해 줍니다.
        $('.sidebar-nav')
        	.attr("class", "sidebar-nav navbar-collapse collapse")
        	.attr("aria-expanded", 'false')
        	.attr("style", "height:1px");
    });
    </script>

</body>
</html>
    