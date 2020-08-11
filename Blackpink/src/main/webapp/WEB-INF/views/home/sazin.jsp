<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/resources/layout/header.jsp">
	<jsp:param name = "title" value = "갤러리" />
</jsp:include>
	<script>
	$(window).on('load', function() {
		$.instagramFeed({
			'username' : 'blackpinkofficial',
			'container' : "#instafeed",
			'display_profile' : true,
			'display_biography' : true,
			'items' : 12,
			'items_per_row' : 3,
			'margin' : 0.5,
			'styling' : true
		});
	});
	</script>
	<!-- content -->
	<div id="instafeed"></div>
<jsp:include page="/resources/layout/footer.jsp"/>

