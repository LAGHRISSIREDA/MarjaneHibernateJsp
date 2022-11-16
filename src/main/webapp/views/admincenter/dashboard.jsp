<%--
  Created by IntelliJ IDEA.
  User: laghr
  Date: 11/8/2022
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../includes/headers/headerAdminGeneral.jsp">
    <jsp:param name="navbar" value="navbar"/>
</jsp:include>


<div class="min-h-full">


    <div class="hidden lg:flex lg:w-64 lg:flex-col lg:fixed lg:inset-y-0">
        <!-- Sidebar component, swap this element with another sidebar if you like -->
        <div class="flex flex-col flex-grow bg-cyan-700 pt-5 pb-4 overflow-y-auto">
            <div class="flex items-center flex-shrink-0 px-4">
                <%--        <img class="h-8 w-auto" src="https://www.marjane.ma/icons/logo_marjane.svg" alt="Easywire logo">--%>
            </div>
            <nav class="mt-5 flex-1 flex flex-col divide-y divide-cyan-800 overflow-y-auto" aria-label="Sidebar">
                <div class="px-2 space-y-1">
                    <!-- Current: "bg-cyan-800 text-white", Default: "text-cyan-100 hover:text-white hover:bg-cyan-600" -->
                    <a href="#" class="bg-cyan-800 text-white group flex items-center px-2 py-2 text-sm leading-6 font-medium rounded-md" aria-current="page">
                        <!-- Heroicon name: outline/home -->
                        <svg class="mr-4 flex-shrink-0 h-6 w-6 text-cyan-200" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                        </svg>
                        Home
                    </a>

                    <a href="#" class="text-cyan-100 hover:text-white hover:bg-cyan-600 group flex items-center px-2 py-2 text-sm leading-6 font-medium rounded-md">
                        <!-- Heroicon name: outline/clock -->
                        <svg class="mr-4 flex-shrink-0 h-6 w-6 text-cyan-200" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                        Promotions
                    </a>

                    <a href="#" class="text-cyan-100 hover:text-white hover:bg-cyan-600 group flex items-center px-2 py-2 text-sm leading-6 font-medium rounded-md">
                        <!-- Heroicon name: outline/document-report -->
                        <svg class="mr-4 flex-shrink-0 h-6 w-6 text-cyan-200" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 17v-2m3 2v-4m3 4v-6m2 10H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                        </svg>
                        Market Manager
                    </a>
                </div>
                <div class="mt-6 pt-6">
                    <div class="px-2 space-y-1">
                        <a href="#" class="group flex items-center px-2 py-2 text-sm leading-6 font-medium rounded-md text-cyan-100 hover:text-white hover:bg-cyan-600">
                            <!-- Heroicon name: outline/cog -->
                            <svg class="mr-4 h-6 w-6 text-cyan-200" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                            </svg>
                            Settings
                        </a>

                        <a href="logout.center" class="group flex items-center px-2 py-2 text-sm leading-6 font-medium rounded-md text-cyan-100 hover:text-white hover:bg-cyan-600">
                            <!-- Heroicon name: outline/question-mark-circle -->
                            <svg class="mr-4 h-6 w-6 text-cyan-200" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                            </svg>
                            Logout
                        </a>


                    </div>
                </div>
            </nav>
        </div>
    </div>

    <div class="lg:pl-64 flex flex-col flex-1">

        <div class="flex-1 pb-8">
            <!-- Page header -->
            <div class="bg-white shadow">
                <div class="px-4 sm:px-6 lg:max-w-6xl lg:mx-auto lg:px-8">
                    <div class="py-6 md:flex md:items-center md:justify-between lg:border-t lg:border-gray-200">
                        <div class="flex-1 min-w-0">
                            <!-- Profile -->
                            <div class="flex items-center">
                                <div>
                                    <div class="flex items-center">
                                        <img class="h-16 w-16 rounded-full sm:hidden" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2.6&w=256&h=256&q=80" alt="">
                                        <h1 class="ml-3 text-2xl font-bold leading-7 text-gray-900 sm:leading-9 sm:truncate">Good morning, ${admin.firstname} ${admin.lastname}</h1>
                                    </div>
                                    <dl class="mt-6 flex flex-col sm:ml-3 sm:mt-1 sm:flex-row sm:flex-wrap">
                                        <dt class="sr-only">Company</dt>
                                        <dd class="flex items-center text-sm text-gray-500 font-medium capitalize sm:mr-6">
                                            <!-- Heroicon name: solid/office-building -->
                                            <svg class="flex-shrink-0 mr-1.5 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                                <path fill-rule="evenodd" d="M4 4a2 2 0 012-2h8a2 2 0 012 2v12a1 1 0 110 2h-3a1 1 0 01-1-1v-2a1 1 0 00-1-1H9a1 1 0 00-1 1v2a1 1 0 01-1 1H4a1 1 0 110-2V4zm3 1h2v2H7V5zm2 4H7v2h2V9zm2-4h2v2h-2V5zm2 4h-2v2h2V9z" clip-rule="evenodd" />
                                            </svg>
                                            Rabat Center

                                        </dd>
                                        <dt class="sr-only">Account status</dt>
                                        <dd class="mt-3 flex items-center text-sm text-gray-500 font-medium sm:mr-6 sm:mt-0 capitalize">
                                            <!-- Heroicon name: solid/check-circle -->
                                            <svg class="flex-shrink-0 mr-1.5 h-5 w-5 text-green-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                                            </svg>
                                            Verified account
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mt-8">
                <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
                    <%--          <h2 class="text-lg leading-6 font-medium text-gray-900">Add new Center Admin</h2>--%>
                    <div class="mt-2 justify-center align-center grid grid-cols-1 gap-5 sm:grid-cols-2 lg:grid-cols-3">
                        <!-- Card -->

                        <div class="bg-white overflow-hidden  rounded-lg">
                            <button class="rounded-full bg-green-500 text-white shadow font-bold border-2 py-2 px-5 hover:bg-violet-600 active:bg-violet-700 focus:outline-none focus:ring focus:ring-violet-300" type="button" data-modal-toggle="authentication-modal">Clic To Add New Center Admin</button>
                        </div>
                        <div class="bg-white overflow-hidden  rounded-lg">
                            <button class="rounded-full bg-green-500 text-white shadow font-bold border-2 py-2 px-5 hover:bg-violet-600 active:bg-violet-700 focus:outline-none focus:ring focus:ring-violet-300" type="button" data-modal-toggle="authentication-modal-promotion">Clic To Add New Promotion</button>
                        </div>

                        <%--  ------------------------------------------modal start to add new Market Manager----------------------------------------- --%>

                        <!-- Modal toggle -->
                        <%--           <button class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" type="button" data-modal-toggle="authentication-modal">--%>
                        <%--            Toggle modal--%>
                        <%--          </button>--%>

                        <!-- Main modal -->
                        <div id="authentication-modal" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 w-full md:inset-0 h-modal md:h-full justify-center items-center">
                            <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                                <!-- Modal content -->
                                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                    <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" data-modal-toggle="authentication-modal">
                                        <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                                        <span class="sr-only">Close modal</span>
                                    </button>
                                    <div class="py-6 px-6 lg:px-8">
                                        <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">Create Center Admin</h3>
                                        <form class="space-y-6" action="create.center" method="post">
                                            <div>
                                                <label for="firstname" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">FirstName : </label>
                                                <input type="text" name="firstname" id="firstname" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="First name" required="">
                                            </div>
                                            <div>
                                                <label for="lastname" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">LastName : </label>
                                                <input type="text" name="lastname" id="lastname" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="Last Name" required="">
                                            </div>
                                            <div>
                                                <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Your email</label>
                                                <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="name@company.com" required="">
                                            </div>
                                            <div>
                                                <label for="center" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Center</label>
                                                <select name="category" id="center" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" ${listSubcategory.size()==null?"disabled":""} >
                                                    <c:forEach items="${listSubcategory}" var="c">
                                                        <c:choose>
                                                            <c:when test="${c.dispo}">
                                                                <option value="${c.id}">${c.name}</option>
                                                            </c:when>
                                                        </c:choose>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">create</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--  ------------------------------------------modal end----------------------------------------- --%>

                        <%--  ------------------------------------------ modal start of Add promotion ----------------------------------------- --%>

                        <div id="authentication-modal-promotion" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 w-full md:inset-0 h-modal md:h-full justify-center items-center">
                            <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                                <!-- Modal content -->
                                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                    <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" data-modal-toggle="authentication-modal-promotion">
                                        <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                                        <span class="sr-only">Close modal</span>
                                    </button>
                                    <div class="py-6 px-6 lg:px-8">
                                        <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">Create Promotion</h3>
                                        <form class="space-y-6" action="promotion.center" method="post">
                                            <div>
                                                <label for="datestart" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Start Date : </label>
                                                <input type="date" name="datestart" id="datestart" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="First name" required="">
                                            </div>
                                            <div>
                                                <label for="dateend" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">End Date : </label>
                                                <input type="date" name="dateend" id="dateend" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="Last Name" required="">
                                            </div>
                                            <div>
                                                <label for="pointfidelite" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Point : </label>
                                                <input type="number" name="pointfidelite" id="pointfidelite" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="Number of Point" required="">
                                            </div>
                                            <div>
                                                <label for="sub" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">SubCategory</label>
                                                <select name="category" id="sub" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" ${listSubcategory.size()==null?"disabled":""} >
                                                    <c:forEach items="${listSubcategory}" var="c">
                                                        <c:choose>
                                                            <c:when test="${!c.dispo}">
                                                                <option value="${c.id}">${c.name}</option>
                                                            </c:when>
                                                        </c:choose>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">create</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--  ------------------------------------------ modal end of Add promotion ----------------------------------------- --%>


                        <!-- More items... -->
                    </div>
                </div>

                <!-- Activity list (smallest breakpoint only) -->
                <%--        <div class="shadow sm:hidden">--%>

                <%--          <nav class="bg-white px-4 py-3 flex items-center justify-between border-t border-gray-200" aria-label="Pagination">--%>
                <%--          </nav>--%>
                <%--        </div>--%>

                <!-- Activity table (small breakpoint and up) -->
<%--                ------------------------------------------------------------------------------Display all MarketMAnager--%>
                <div class="hidden sm:block">
                    <div class="mt-8">
                        <h1 class="text-center font-bold text-2xl">Market Manager List</h1>
                    </div>
                    <div class="overflow-x-auto">
                        <div class="min-w-screen flex items-center justify-center  font-sans overflow-hidden">
                            <div class="w-full lg:w-5/6">
                                <div class="bg-white shadow-md rounded my-6">
                                    <table class="min-w-max w-full table-auto">
                                        <thead>
                                        <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                                            <th class="py-3 px-6 text-left">FirstName</th>
                                            <th class="py-3 px-6 text-left">LastName</th>
                                            <th class="py-3 px-6 text-center">Email</th>
                                            <th class="py-3 px-6 text-center">subCategory</th>
                                            <th class="py-3 px-6 text-center">Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody class="text-gray-600 text-sm font-light">
                                        <c:forEach items="${listMarketManager}" var="t">
                                            <tr class="border-b border-gray-200 hover:bg-gray-100">
                                                <td class="py-3 px-6 text-left whitespace-nowrap">
                                                    <div class="flex items-center">
                                                        <div class="mr-2">
                                                        </div>
                                                        <span class="font-medium">${t.firstname}</span>
                                                    </div>
                                                </td>
                                                <td class="py-3 px-6 text-left">
                                                    <div class="flex items-center">
                                                        <div class="mr-2">
                                                            <img class="w-6 h-6 rounded-full" src="https://randomuser.me/api/portraits/men/1.jpg"/>
                                                        </div>
                                                        <span>${t.lastname}</span>
                                                    </div>
                                                </td>
                                                <td class="py-3 px-6 text-center">
                                                    <div class="flex items-center justify-center">
                                                        <span class="font-medium">${t.email}</span>
                                                    </div>
                                                </td>
                                                <td class="py-3 px-6 text-center">
                                                    <span class=font-medium">${t.subCategory.name}</span>
                                                </td>
                                                <td class="py-3 px-6 text-center">
                                                    <div class="flex item-center justify-center">
                                                        <div class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                                            <a href="/delete.center?id=${t.id}">
                                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                                                </svg>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


        </div>
<%--        -----------------------------------------------------------End Display MarketManager------------------------------%>

<%--        ---------------------------------------------------------Strat display all promotion---------------------%>
        <div class="hidden sm:block">
            <div>
                <h1 class="text-center font-bold text-2xl">Promotion List</h1>
            </div>
            <div class="overflow-x-auto">
                <div class="min-w-screen flex items-center justify-center  font-sans overflow-hidden">
                    <div class="w-full lg:w-5/6">
                        <div class="bg-white shadow-md rounded my-6">
                            <table class="min-w-max w-full table-auto">
                                <thead>
                                <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                                    <th class="py-3 px-6 text-left">Start Date</th>
                                    <th class="py-3 px-6 text-left">End Date</th>
                                    <th class="py-3 px-6 text-center">Point fidelite</th>
                                    <th class="py-3 px-6 text-center">Subcategory</th>
                                    <th class="py-3 px-6 text-center">Status</th>
                                </tr>
                                </thead>
                                <tbody class="text-gray-600 text-sm font-light">
                                <c:forEach items="${listPromotion}" var="t">
                                    <tr class="border-b border-gray-200 hover:bg-gray-100">
                                        <td class="py-3 px-6 text-left whitespace-nowrap">
                                            <div class="flex items-center">
                                                <div class="mr-2">
                                                </div>
                                                <span class="font-medium">${t.dateStart}</span>
                                            </div>
                                        </td>
                                        <td class="py-3 px-6 text-left">
                                            <div class="flex items-center">

                                                <span>${t.dateEnd}</span>
                                            </div>
                                        </td>
                                        <td class="py-3 px-6 text-center">
                                            <div class="flex items-center justify-center">
                                                <span class="font-medium">${t.point}</span>
                                            </div>
                                        </td>
                                        <td class="py-3 px-6 text-center">
                                            <span class=font-medium">${t.subCategory.name}</span>
                                        </td>
                                        <td class="py-3 px-6 text-center">
                                            <div class="flex items-center justify-center">
                                                <c:if test="${t.status=='PENDING'}">
                                                    <span class="bg-yellow-200 text-yellow-600 py-1 px-3 rounded-full text-xs">${t.status}</span>
                                                </c:if>
                                                <c:if test="${t.status=='ACCEPTED'}">
                                                    <span class="bg-green-200 text-green-600 py-1 px-3 rounded-full text-xs">${t.status}</span>
                                                </c:if>
                                                <c:if test="${t.status=='REJECTED'}">
                                                    <span class="bg-red-200 text-red-600 py-1 px-3 rounded-full text-xs">${t.status}</span>
                                                </c:if>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>


            </div>
        </div>

    </div>
</div>

        <%--      ------------------------------------------------------------end Display all promotion--%>
        <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
        <%--footer--%>
        <%--<jsp:include page="../includes/footer.jsp">--%>
        <%--  <jsp:param name="navbar" value="navbar"/>--%>
        <%--</jsp:include>--%>
