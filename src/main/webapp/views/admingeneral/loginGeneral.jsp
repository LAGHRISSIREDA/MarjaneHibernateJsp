<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--navbar--%>
<jsp:include page="../inc/headers/headerAdminGeneral.jsp">
    <jsp:param name="navbar1" value="navbar"/>
</jsp:include>
<%--end navbar--%>

<%--Start of login form--%>
<%--<div class="min-h-screen bg-gray-100 py-6 flex flex-col justify-center sm:py-12">--%>
<%--    <div class="relative py-3 sm:max-w-xl sm:mx-auto">--%>
<%--        <div--%>
<%--                class="absolute inset-0 bg-gradient-to-r from-blue-300 to-blue-600 shadow-lg transform -skew-y-6 sm:skew-y-0 sm:-rotate-6 sm:rounded-3xl">--%>
<%--        </div>--%>
<%--        <form action="login.general" method="post">--%>
<%--            <div class="relative px-4 py-10 bg-white shadow-lg sm:rounded-3xl sm:p-20">--%>
<%--                <div class="max-w-md mx-auto">--%>
<%--                    <div>--%>
<%--                        <h1 class="text-2xl font-semibold">Login Form with Floating Labels</h1>--%>
<%--                    </div>--%>
<%--                    <div class="divide-y divide-gray-200">--%>
<%--                        <div class="py-8 text-base leading-6 space-y-4 text-gray-700 sm:text-lg sm:leading-7">--%>
<%--                            <div class="relative">--%>
<%--                                <input id="email" name="email" type="text" class="peer placeholder-transparent h-10 w-full border-b-2 border-gray-300 text-gray-900 focus:outline-none focus:borer-rose-600" placeholder="Email address" />--%>
<%--                                <label for="email" class="absolute left-0 -top-3.5 text-gray-600 text-sm peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-440 peer-placeholder-shown:top-2 transition-all peer-focus:-top-3.5 peer-focus:text-gray-600 peer-focus:text-sm">Email Address</label>--%>
<%--                            </div>--%>
<%--                            <div class="relative">--%>
<%--                                <input  id="password" name="password" type="password" class="peer placeholder-transparent h-10 w-full border-b-2 border-gray-300 text-gray-900 focus:outline-none focus:borer-rose-600" placeholder="Password" />--%>
<%--                                <label for="password" class="absolute left-0 -top-3.5 text-gray-600 text-sm peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-440 peer-placeholder-shown:top-2 transition-all peer-focus:-top-3.5 peer-focus:text-gray-600 peer-focus:text-sm">Password</label>--%>
<%--                            </div>--%>
<%--                            <div class="mb-6 text-red-300">--%>
<%--                                <% if(request.getAttribute("alert")!=null){ %>--%>
<%--                                <p class="text-red-600"><%= request.getAttribute("alert") %></p>--%>
<%--                                <% } %>--%>
<%--                            </div>--%>
<%--                            <div class="relative">--%>
<%--                                <button type="submit" class="bg-blue-500 text-white rounded-md px-2 py-1">Submit</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>

<section class="flex flex-col md:flex-row h-screen items-center">

    <div class="bg-indigo-600 hidden lg:block w-full md:w-1/2 xl:w-2/3 h-screen">
        <img src="https://medias24.com/content/uploads/2021/04/Marjane3.jpg" alt="" class="w-full h-full object-cover">
    </div>

    <div class="bg-white w-full md:max-w-md lg:max-w-full md:mx-auto md:mx-0 md:w-1/2 xl:w-1/3 h-screen px-6 lg:px-16 xl:px-12
        flex items-center justify-center">

        <div class="w-full h-100">


            <h1 class="text-xl md:text-2xl font-bold leading-tight mt-12">General Admin Login Form</h1>

            <form class="mt-6" action="/login.general" method="post">
                <div>
                    <label class="block text-gray-700">Email Address</label>
                    <input  type="email" name="email" placeholder="Enter Email Address" class="w-full px-4 py-3 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none" autofocus autocomplete required>
                </div>

                <div class="mt-4">
                    <label class="block text-gray-700">Password</label>
                    <input type="password" name="password" required  placeholder="Enter Password" minlength="6" class="w-full px-4 py-3 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500
                focus:bg-white focus:outline-none" required>
                </div>
                <div class="mb-6 text-red-300">
                    <% if(request.getAttribute("alert")!=null){ %>
                        <p class="text-red-600"><%= request.getAttribute("alert") %></p>
                    <% } %>
                </div>
                <button type="submit" class="w-full block bg-indigo-500 hover:bg-indigo-400 focus:bg-indigo-400 text-white font-semibold rounded-lg
              px-4 py-3 mt-6">Log In</button>
            </form>

            <hr class="my-6 border-gray-300 w-full">


        </div>
    </div>

</section>



