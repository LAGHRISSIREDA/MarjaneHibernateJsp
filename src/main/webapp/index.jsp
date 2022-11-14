<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%--navbar--%>
    <jsp:include page="views/includes/headers/headerStandard.jsp">
        <jsp:param name="navbar" value="navbar"/>
    </jsp:include>
    <%--end navbar--%>

    <%--Start--%>

<div class="container mt-20 flex h-[32rem] md:flex-column uppercase justify-center items-center gap-40">
    <div class="">
        <lottie-player  src="https://assets7.lottiefiles.com/packages/lf20_l3j1mflq.json" background="transparent"  speed="1"  loop  autoplay></lottie-player>
    </div>

</div>

    <%--end--%>


<%--        start footer--%>
<%--    <jsp:include page="views/includes/footer.jsp">--%>
<%--        <jsp:param name="footer" value="footer"/>--%>
<%--    </jsp:include>--%>
<%--     END FOOTER--%>