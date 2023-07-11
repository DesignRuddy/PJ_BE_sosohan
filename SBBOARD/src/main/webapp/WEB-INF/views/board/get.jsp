<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


  <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
    
    <link href="/resources/header/header.css" rel="stylesheet">
    
    <link href="/resources/footer/footer.css" rel="stylesheet">


</head>


<script type="text/javascript">
    $(document).ready(function() {
        var operForm = $("#operForm");

        $("button[data-oper='modify']").on("click", function(e) {
            operForm.attr("action", "/board/modify").submit();
        });

        $("button[data-oper='list']").on("click", function(e) {
            operForm.find("#bno").remove();
            operForm.attr("action", "/board/list")
            operForm.submit();
        });
    });
</script>
<body>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Board Read</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Board Read Page</div>
            <div class="panel-body">
                <div class="form-group">
                    <label>Bno</label>
                    <input class="form-control" name="bno" value="${board.bno}" readonly="readonly">
                </div>
                <div class="form-group">
                    <label>Title</label>
                    <input class="form-control" name="title" value="${board.title}" readonly="readonly">
                </div>
               
                <div class="form-group">
                    <label>Photo</label><br>
                   <img src="/board/serverimg/${board.photoFileName}" style="max-width: 500px;">
                </div>
                 <div class="form-group">
                    <label>Content</label>
                    <textarea class="form-control" name="content" readonly="readonly">${board.content}</textarea>
                </div>
                <div class="form-group">
                    <label>Writer</label>
                    <input class="form-control" name="writer" value="${board.writer}" readonly="readonly">
                </div>
                <button data-oper="modify" class="btn btn-default" onclick="location.href='/board/modify?bno=${board.bno}'">글내용 수정!</button>
                <button data-oper="list" class="btn btn-info" onclick="location.href='/board/list'">글목록 조회로 Go!</button>
                <form id="operForm" action="/board/modify" method="get">
                    <input type="hidden" id="bno" name="bno" value="${board.bno}">
                    <input type="hidden" name="pageNum" value="${cri.pageNum}">
                    <input type="hidden" name="amount" value="${cri.amount}">
                    <!-- Page345 : 15.4.2 조회 페이지에서 검색 처리 아래줄 2줄 소스 추가 적용 -->
                    <input name="pageNum" type="hidden" value="${cri.pageNum}" />
                    <input name="amount" type="hidden" value="${cri.amount}" />
                </form>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<%@ include file="../includes/footer.jsp" %>
</body>
</html>