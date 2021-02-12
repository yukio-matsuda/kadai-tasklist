<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url = "../layout/app.jsp">
    <c:param name = "content">
        <c:choose>
            <c:when test = "${task != null}">
                <h2>id : "${task.id}" の報告詳細ページ</h2>

                <p>報告内容:<c:out value = "${task.content}" /></p>
                <p>作成日時:<c:out value = "${task.created_at}" /></p>
                <p>更新日時:<c:out value = "${task.updated_at}" /></p>

                <p><a href = "${pageContext.request.contextPath}/index" >一覧に戻る</a></p>
                <p><a href = "${pageContext.request.contextPath}/edit?id=${task.id}" >この報告を編集する</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>