<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../includes/headers/headerStandard.jsp">
    <jsp:param name="navbar" value="navbar"/>
</jsp:include>

<section class="">
    <div class="px-6 h-full text-gray-800">
        <div
                class="flex xl:justify-center lg:justify-between justify-center items-center flex-wrap h-full g-6"
        >
            <div
                    class="grow-0 shrink-1 md:shrink-0 basis-auto xl:w-6/12 lg:w-6/12 md:w-9/12 mb-12 md:mb-0"
            >
                <img
                        src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                        class="w-full"
                        alt="Sample image"
                />
            </div>
            <div class="xl:ml-20 xl:w-5/12 lg:w-5/12 md:w-8/12 mb-12 md:mb-0">
                <form method="post" action="verify.manager">
                    <div class="flex flex-row items-center justify-center lg:justify-start">
                        <h1 class="font-bold">Market Manager Login Form</h1>
                    </div>

                    <div
                            class="flex items-center my-4 before:flex-1 before:border-t before:border-gray-300 before:mt-0.5 after:flex-1 after:border-t after:border-gray-300 after:mt-0.5"
                    >
                        <p class="text-center font-semibold mx-4 mb-0"></p>
                    </div>

                    <!-- Email input -->
                    <div class="mb-6">
                        <input
                                type="text"
                                class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                name="email"
                                placeholder="Email address"
                        />
                    </div>

                    <!-- Password input -->
                    <div class="mb-6">
                        <input
                                type="password"
                                class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                name="password"
                                placeholder="Password"
                        />
                    </div>
                    <div class="flex items-center justify-between">
                        <% if(request.getAttribute("message")!=null){ %>
                        <p class="text-red-600 mb-4"><%= request.getAttribute("message") %></p>
                        <% } %>
                    </div>
                    <div class="text-center lg:text-left">
                        <input type="submit" value="Login" class=" px-7 py-3 bg-blue-600 text-white font-medium text-sm leading-snug uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<%--enclide footer--%>

<jsp:include page="../includes/footer.jsp">
    <jsp:param name="navbar" value="navbar"/>
</jsp:include>
