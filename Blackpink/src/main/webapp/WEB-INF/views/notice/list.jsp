<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	<jsp:include page="/resources/layout/header.jsp">
		<jsp:param name = "title" value = "공지사항" />
	</jsp:include>
	<c:if test="${loginUser.i_user ==1 }">
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
			글 쓰기
		</button>
	</c:if>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLongTitle">제목</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body" id = "noticetnt">
	        	내용
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	       
	      </div>
	    </div>
	  </div>
	</div>
	
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">공지사항 글 쓰기</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <form action="/blackpink/notice/write" method="post">
	      <div class="modal-body">
	          <div class="form-group">
	            <label for="recipient-name" class="col-form-label">제목:</label>
	            <input type="text" class="form-control" id="recipient-name" name="title">
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="col-form-label">내용:</label>
	            <textarea class="form-control" id="message-text" name="noticetnt"></textarea>
	          </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	        <button type="submit" class="btn btn-primary">글 등록</button>
	      </div>
	      </form>
	    </div>
	  </div>
	</div>
	
	<table>
		<tr>
			<th>번호</th>
			<th>구글PK</th>
			<th>이름</th>
			<th>제목</th>
			<th>작성일</th>
			<th>내용보기 (axios Ajax 통신)</th>
			 <c:if test="${loginUser.i_user ==1 }">
			 <th>삭제 (form POST방식 delete)</th>
			 <th>수정</th>
			 </c:if>
		</tr>
		<c:forEach items="${data}" var="item">
			<tr>
				<td>${item.i_notice }</td>
				<td>${item.i_user }</td>
				<td>${item.nm }</td>
				<td>${item.title }</td>
				<td>${item.r_dt }</td>
				<td>			
				<button type="button" class="btn btn-primary" data-toggle="modal" onclick="getNoticeDetail(${item.i_notice})" data-target="#exampleModalLong" >
				  ${item.i_notice}번글 내용보기
				</button>
				</td>
				<td>
					<form action="/blackpink/notice/delete" method="post">
					  <input type="hidden" name="i_notice" value="${item.i_notice }">
		        	  <c:if test="${loginUser.i_user ==1 }">
		        	  <button type="submit" class="btn btn-primary">
		        	  	${item.i_notice}번글 삭제
		        	  </button>
		        	  </c:if>
		      		</form>
				</td>
				<td>
	        	  <c:if test="${loginUser.i_user ==1 }">
	        	  <div class="modal fade" id="upd2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">공지사항 글 수정</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <form action="/blackpink/notice/upd" method="post">
					      <input type="hidden" name="i_notice" value="${item.i_notice }">
					      <div class="modal-body">
					          <div class="form-group">
					            <label for="recipient-name" class="col-form-label">제목:</label>
					            <input type="text" class="form-control" id="recipient-name" name="title">
					          </div>
					          <div class="form-group">
					            <label for="message-text" class="col-form-label">내용:</label>
					            <textarea class="form-control" id="message-text" name="noticetnt"></textarea>
					          </div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					        <button type="submit" class="btn btn-primary">글 등록</button>
					      </div>
					      </form>
					    </div>
					  </div>
					</div>
					 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#upd2">
						${item.i_notice}번글 수정 //여기서부터 이어서하기
				  	</button>
	        	  </c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
	<script>
	var exampleModalLongTitle = document.querySelector('#exampleModalLongTitle');
	var noticetnt = document.querySelector('#noticetnt');
	function getNoticeDetail(i_notice) {		
		axios.get('/blackpink/notice/getNoticeDetail', {
			params: {
					'i_notice': i_notice
				}
			}).then(function (res) {
				exampleModalLongTitle.innerHTML = res.data.result.title
				noticetnt.innerHTML = res.data.result.noticetnt
			})
	}
	
	</script>
	<jsp:include page="/resources/layout/footer.jsp"/>
​
