<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="post" items="${postList}">
    <div class="post-content">
        <a href="#"><img class="img" src="${pageContext.request.contextPath}${post.boardImgPath}/${post.boardImgName}" /></a>
        <span class="tag">${post.boardHashtag}</span>
        <span class="content-name">${post.boardTitle}</span>
        <div class="user-info">
            <img class="mini-profile" src="${pageContext.request.contextPath}	${post.memberProfileImgPath}/${post.memberProfileImgName}" />
            <span class="user-nickname">${post.memberNickname}</span>
        </div>
        <span class="content-date">${post.boardContentCreateDate} 게시</span>
        <div class="content-info">
            <span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">${post.likeCount}</span>
            <span class="views"><img class="icon" src="../assets/images/community/view-icon.png">${post.boardContentViews}</span>
            <span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">${post.commentCount}</span>
        </div>
    </div>
</c:forEach>