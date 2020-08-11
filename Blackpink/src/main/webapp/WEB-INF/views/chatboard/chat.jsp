<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	<jsp:include page="/resources/layout/header.jsp">
		<jsp:param name = "title" value = "커뮤니티" />
	</jsp:include>
	<div class="container">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4>
									<i class="fa fa-circle text-green"></i>실시간 채팅방
								</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						
						<div id="chat" class="panel-collapse collapse in">
						<div id="chatList" class="portlet-body chat-widget"
								style="overflow-y: auto; width: auto; height: 300px;">
								<div class="row">
									<div class="alert alert-success" id="successMessage"
										style="display: none;" >
										<strong>메시지 전송에 성공했습니다.</strong>
									</div>
									<div class="alert alert-danger" id="dangerMessage"
										style="display: none;" >
										<strong>이름과 내용을 모두 입력해주세요.</strong>
									</div>
									<div class="alert alert-worning" id="worningMessage"
										style="display: none;">
										<strong>데이터베이스 오류가 발생했습니다.</strong>
									</div>
								</div>
							</div>
							<div class="portlet-footer">
								<div class="row">
								
									<div class="form-group col-xs-4">
										<input style="height: 40px;" type="text" id="chatName"
											class="form-control" placeholder="이름" maxlength="20">
									</div>
								</div>
								
								<div class="row" style="height: 90px">
									<div class="form-group col-xs-10">
										<textarea style="height: 80px;" id="chatContent"
											class="form-control" placeholder="메시지를 입력하세요."
											maxlength="100"></textarea>
									</div>
									<div class="form-group col-xs-2">
										<button type="button" class="btn btn-default pull-right"
											onclick="submitFunction();">전송</button>
										<div class="clearfix"></div>
									</div>
								
								</div>
								
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<button type = "button" class = "btn btn-default pull-right" onclick="chatListFunction('today');">추가</button>
</body>
	
	
<jsp:include page="/resources/layout/footer.jsp"/>
