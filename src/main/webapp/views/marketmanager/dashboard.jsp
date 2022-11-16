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

            <a href="logout.manager" class="group flex items-center px-2 py-2 text-sm leading-6 font-medium rounded-md text-cyan-100 hover:text-white hover:bg-cyan-600">
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
          <div class="mt-2 grid grid-cols-1 gap-5 sm:grid-cols-2 lg:grid-cols-3">
            <!-- Card -->

            <%--  ------------------------------------------modal start----------------------------------------- --%>

            <!-- Modal toggle -->
            <%--           <button class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" type="button" data-modal-toggle="authentication-modal">--%>
            <%--            Toggle modal--%>
            <%--          </button>--%>

            <!-- Main modal -->


            <%--  ------------------------------------------modal end----------------------------------------- --%>


            <!-- More items... -->
          </div>
        </div>

        <!-- Activity list (smallest breakpoint only) -->
        <%--        <div class="shadow sm:hidden">--%>

        <%--          <nav class="bg-white px-4 py-3 flex items-center justify-between border-t border-gray-200" aria-label="Pagination">--%>
        <%--          </nav>--%>
        <%--        </div>--%>

        <!-- Activity table (small breakpoint and up) -->
        <div class="hidden sm:block">

          <div class="overflow-x-auto">
            <div class="min-w-screen flex items-center justify-center  font-sans overflow-hidden">
              <div class="w-full lg:w-5/6">
                <div class="bg-white shadow-md rounded my-6">
                  <table class="min-w-max w-full table-auto">
                    <thead>
                    <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                      <th class="py-3 px-6 text-center">SubCategory</th>
                      <th class="py-3 px-6 text-left">Date Start</th>
                      <th class="py-3 px-6 text-left">Date End</th>
                      <th class="py-3 px-6 text-center">point</th>
                      <th class="py-3 px-6 text-center">Status</th>
                      <th class="py-3 px-6 text-center">Actions</th>
                    </tr>
                    </thead>
                    <tbody class="text-gray-600 text-sm font-light">
                    <c:forEach items="${listPromotions}" var="t">
                      <tr class="border-b border-gray-200 hover:bg-gray-100">
                        <td class="py-3 px-6 text-center">
                          <span class=font-medium">${subcategory.name}</span>
                        </td>
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
<%--                          Pendind--%>

                            <c:if test="${t.status=='PENDING'}">
                             <span class="bg-yellow-200 text-yellow-600 py-1 px-3 rounded-full text-xs">${t.status}</span>
                            </c:if>
                            <c:if test="${t.status=='ACCEPTED'}">
                                <span class="bg-green-200 text-green-600 py-1 px-3 rounded-full text-xs">${t.status}</span>
                            </c:if>
                            <c:if test="${t.status=='REJECTED'}">
                                <span class="bg-red-200 text-red-600 py-1 px-3 rounded-full text-xs">${t.status}</span>
                            </c:if>

<%--                          active--%>
<%--                          <span class="bg-green-200 text-green-600 py-1 px-3 rounded-full text-xs">${t.status}</span>--%>
<%--                          reject--%>
<%--                          <span class="bg-red-200 text-red-600 py-1 px-3 rounded-full text-xs">${t.status}</span>--%>

                        </td>
                        <td class="py-3 px-6 text-center">
                          <div class="flex item-center justify-center">

                            <c:if test="${t.status!='ACCEPTED' && t.status!='REJECTED' }">

                                <div class=" mr-2 transform hover:text-purple-500 hover:scale-110">
                                  <a href="/accepter.manager?id=${t.id}"  class="text-green-600 py-1 px-3 rounded-full text-xs">
                                    ACCEPTER
                                      <%--                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">--%>
                                      <%--                                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />--%>
                                      <%--                                </svg>--%>
                                  </a>
                                </div>
                                <div class="mr-2 transform hover:text-purple-500 hover:scale-110">
                                  <a href="/rejecter.manager?id=${t.id}"  class="text-red-600 py-1 px-3 rounded-full text-xs">
                                    REJECTER
                                      <%--                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">--%>
                                      <%--                                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />--%>
                                      <%--                                </svg>--%>
                                  </a>
                                </div>

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

<%--    Modal to update promotion--%>


    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script>
      function clicMe(id){
        document.getElementById("idPromotion").innerText=id;
      }
    </script>
    <%--footer--%>
    <%--<jsp:include page="../includes/footer.jsp">--%>
    <%--  <jsp:param name="navbar" value="navbar"/>--%>
    <%--</jsp:include>--%>
