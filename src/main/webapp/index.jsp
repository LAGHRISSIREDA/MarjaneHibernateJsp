<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%--navbar--%>
    <jsp:include page="views/includes/headers/headerStandard.jsp">
        <jsp:param name="navbar" value="navbar"/>
    </jsp:include>
    <%--end navbar--%>

    <%--Start--%>

<div class="container flex h-[32rem] md:flex-column uppercase justify-center items-center gap-40">
    <div class="">
        <lottie-player  src="https://assets4.lottiefiles.com/packages/lf20_vjrlq3tj.json" background="transparent"  speed="1"  loop  autoplay></lottie-player>
    </div>
    <div>
        <h1 class="font-black">Marjane j'y vais, j'y gagne !</h1>
        <p>Lorem ipsum dolor sit amet, consectetur
            adipisicing elit. Adipisci architecto,
            aspernatur atque delectus dicta ea ex incidunt
            itaque iusto maxime minus molestias natus non
            nulla praesentium quae veniam vero voluptatum.</p>
    </div>
</div>

    <%--end--%>


<%--        start footer--%>
    <jsp:include page="views/includes/footer.jsp">
        <jsp:param name="footer" value="footer"/>
    </jsp:include>
<%--     END FOOTER--%>