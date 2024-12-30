
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <title>Responsive Dashboard Design #1 | AsmrProg</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <style>
        
/* Modal styles */
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.4);
    }

    .modal-content {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        max-width: 400px;
        border-radius: 5px;
    }

    /* Form styles */
    .modal-content form {
        display: flex;
        flex-direction: column;
    }

    .modal-content label {
        margin-bottom: 10px;
        font-weight: bold;
    }

    .modal-content input[type="text"],
    .modal-content input[type="password"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .modal-content button[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .modal-content button[type="submit"]:hover {
        background-color: #45a049;
    }

 .sales-container {
        display: flex;
        justify-content: center;
        align-items: center;
  
        /* Add any other styles for the sales container div */
    }
    
    .sales .status {
        /* Add any styles for the status div within the sales div */
    }
    
    .sales .info {
        text-align: center;
        /* Add any styles for the info div within the sales div */
    }
    </style>
    <script>
        $(document).ready(function() {
            // Function to update the order count
            function updateOrderCount() {
                $.ajax({
                    url: "OrderCountServlet", // Replace with the URL of your servlet
                    type: "GET",
                    success: function(count) {
                        $(".message-count").text(count);
                    },
                    error: function() {
                        console.log("Error occurred while retrieving order count.");
                    }
                });
            }

            // Call the updateOrderCount function initially
            updateOrderCount();

            // Set an interval to update the order count every 5 seconds
            setInterval(updateOrderCount, 5000);
        });
    </script>
</head>

<body>

    <div class="container">
        <!-- Sidebar Section -->
        <aside>
            <div class="toggle">
                <div class="logo">
                    <img src="images/logo.png">
                    <h2>Welocome<span class="danger"></br>Chief</span></h2>
                </div>
                <div class="close" id="close-btn">
                    <span class="material-icons-sharp">
                        close
                    </span>
                </div>
            </div>

            <div class="sidebar">
		                <a href="#" class="sidebar-link" data-section="dashboard">
		                    <span class="material-icons-sharp">
		                        dashboard
		                    </span>
		                    <h3>Dashboard</h3>
		                </a>
               
              
                <a href="#" class="sidebar-link" data-section="Foods" >
                    <span class="material-icons-sharp">
                        receipt_long
                    </span>
                    <h3>Food</h3>
                     <span class="message-count" id="foodCount">27</span>
                </a>
                <a href="#" class="active">
                    <span class="material-icons-sharp" data-section="insights">
                        insights
                    </span>
                    <h3>Analytics</h3>
                </a>
                
               
                <a href="#" class="sidebar-link" data-section="Table">
                    <span class="material-icons-sharp">
                        report_gmailerrorred
                    </span>
                    <h3>Tables Order</h3>
                    <span class="message-count" id="orderCount">27</span>
                </a>
              
               
                
                <a href="../../Login.jsp">
                    <span class="material-icons-sharp">
                        logout
                    </span>
                    <h3>Logout</h3>
                </a>
                 <a href="#" class="sidebar-link" data-section="Analytics">
                    <span class="material-icons-sharp">
                        settings
                    </span>
                    <h3>Settings</h3>
                </a>
            </div>
        </aside>
        <!-- End of Sidebar Section -->
        
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%>        
 	 <%-- ------------------------------The dashboard section----------------------------------- --%> 

        <!-- Main Content -->
        <main id="dashboard" class="section" style="display: none;">
            <h1>Analytics</h1>
            <!-- Analyses -->
            <div class="analyse">
                <div class="sales">
                    <div class="status">
                        <div class="info">
                            <h3>Customers's This Year</h3>
                            <h1>8000</h1>
                        </div>
                        <div class="progresss">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="percentage">
                                <p>+81%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="visits">
                    <div class="status">
                        <div class="info">
                            <h3>Order Satisfaction</h3>
                            <h1>4000</h1>
                        </div>
                        <div class="progresss">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="percentage">
                                <p>-48%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="searches">
                    <div class="status">
                        <div class="info">
                            <h3>Table Reservations</h3>
                            <h1>2000</h1>
                        </div>
                        <div class="progresss">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="percentage">
                                <p>+21%</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of Analyses -->

            <!-- New Users Section -->
            <div class="new-users">
                <h2>New Users</h2>
                <div class="user-list" id="userContainer">
                    
                    
                        
                       
                        
                   
                </div>
            </div>
            <!-- End of New Users Section -->

            <!-- Recent Orders Table -->
         
			    <div class="recent-orders">
			     
			        <div id="dataContainer">
                    
                        
                           
                              
                       
                 
                    
                </div>
			        
			    </div>
		
			            <!-- End of Recent Orders -->

        </main>
        <!-- End of Main Content -->
        
                
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%> 
     
     
    
     
     
        
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%>     
  		<%-- ----------------------------------The users section----------------------------------- --%> 
 <main id="Analytics" class="right-section section" style="display: none;">
        <!-- Right Section -->
        
            <div class="nav">
                <button id="menu-btn">
                    <span class="material-icons-sharp">
                        menu
                    </span>
                </button>
                <div class="dark-mode">
                    <span class="material-icons-sharp active">
                        light_mode
                    </span>
                    <span class="material-icons-sharp">
                        dark_mode
                    </span>
                </div>

                <div class="profile">
                    <div class="info">
                        <p>Hey, <b>Cheif</b></p>
                        <small class="text-muted">chief</small>
                    </div>
                    <div class="profile-photo">
                        <img src="images/profile-1.jpg">
                    </div>
                </div>

            </div>
            <!-- End of Nav -->

            <div class="user-profile">
                <div class="logo">
                    <img src="images/logo.png">
                    <h2>Chief</h2>
                    <p>Cheif Excecutive</p>
                </div>
            </div>

            <div class="reminders">
                <div class="header">
                    <h2>Reminders</h2>
                    <span class="material-icons-sharp">
                        notifications_none
                    </span>
                </div>

                <div class="notification">
                    <div class="icon">
                        <span class="material-icons-sharp">
                            volume_up
                        </span>
                    </div>
                    <div class="content">
                        <div class="info">
                            <h3>Workshop</h3>
                            <small class="text_muted">
                                08:00 AM - 12:00 PM
                            </small>
                        </div>
                        <span class="material-icons-sharp">
                            more_vert
                        </span>
                    </div>
                </div>

                <div class="notification deactive">
                    <div class="icon">
                        <span class="material-icons-sharp">
                            edit
                        </span>
                    </div>
                    <div class="content">
                        <div class="info">
                            <h3>Workshop</h3>
                            <small class="text_muted">
                                08:00 AM - 12:00 PM
                            </small>
                        </div>
                        <span class="material-icons-sharp">
                            more_vert
                        </span>
                    </div>
                </div>

                <div class="notification add-reminder">
                    <div>
                        <span class="material-icons-sharp">
                            add
                        </span>
                        <h3>Add Reminder</h3>
                    </div>
                </div>

            </div>

    
 </main>            
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%>    
          
         <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%>     
  		<%-- ----------------------------------The insights section----------------------------------- --%> 
  <main id="insights" class="section right-section " style="display: none;">
        <!-- Right Section -->
       
            
<div class="analyse">
                <div class="sales">
                    <div class="status">
                        <div class="info">
                            <h3>Customers's This Year</h3>
                            <h1>8000</h1>
                        </div>
                        <div class="progresss">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="percentage">
                                <p>+81%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="visits">
                    <div class="status">
                        <div class="info">
                            <h3>Order Satisfaction</h3>
                            <h1>4000</h1>
                        </div>
                        <div class="progresss">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="percentage">
                                <p>-48%</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="searches">
                    <div class="status">
                        <div class="info">
                            <h3>Table Reservations</h3>
                            <h1>2000</h1>
                        </div>
                        <div class="progresss">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="percentage">
                                <p>+21%</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      
    
 </main>
             
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%>  
        
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%> 
      <%-- --------------------------The Foods section------------------------------------ --%> 
        
        <main id="Foods" class="section" style="display: none;">
            

           

             <div class="recent-orders">
			     
			        <div id="dataContainer1">
                    
                        
                           
                          
                 
                    
                </div>
			        
			   <div class="analyse" style="display: flex; justify-content: center; align-items: center;">
                <div class="sales-container">
                    <div class="status">
                        <div class="info">
                        
                            <h1>Check Out Order</h1>
                            <center><button type="submit" id="myBtn" style="background-color: skyblue; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;">
                        
				            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="max-width: 50px; max-height: 50px">
				              <path d="M20 6L9 17 4 12"></path>
				            </svg>
				            </button></center>
                        </div>
                        
                    </div>
                </div>
                
            </div>
            <!-- End of Recent Orders -->
            
                
        <!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
   <div class="modal-content">
        
        <h2>Check Out Order</h2>
        <form action="../../ChefOrderCheckOut" method="POST">
         	
            <label for="chefName"> Order Id</label>
            <input type="text" id="FoodId" name="FoodId" placeholder="Enter chef name" required>

            <button type="submit">Remove</button>
        </form>
    </div>

</div>
        
        
                 </main>      
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%> 



		<%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%> 
      <%-- --------------------------The Chefs section------------------------------------ --%> 
        
        <main id="Chefs" class="section" style="display: none;">
            

           

             <div class="recent-orders">
			     
			        <div id="chefContainer">
                    
                        
                           
                          
                 
                    
                </div>
			        
			  
			  </main>            
            <!-- End of Recent Orders -->
    


<!-- The Modal -->

 
        
        
        
                
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%> 
		
<%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%> 
      <%-- --------------------------The Tables section------------------------------------ --%> 
        
        <main id="Table" class="section" style="display: none;">
            

           

             <div class="recent-orders">
			     
			        <div id="orderContainer">
                    
                        
                           
                          
                 
                    
                </div>
			        
			    </div>
            <!-- End of Recent Orders -->

        </main>
        
        
                
  <%-- -------------------------------------------------------------------------------------- --%> 
   <%-- -------------------------------------------------------------------------------------- --%> 
    <%-- -------------------------------------------------------------------------------------- --%> 
     <%-- -------------------------------------------------------------------------------------- --%> 


    </div>

    <script src="orders.js"></script>
    <script src="index.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const sidebarLinks = document.querySelectorAll('.sidebar-link');
            const sections = document.querySelectorAll('.section');

            sidebarLinks.forEach(link => {
                link.addEventListener('click', function (e) {
                    e.preventDefault();
                    const sectionId = this.getAttribute('data-section');
                    sections.forEach(section => {
                        section.style.display = 'none';
                    });
                    document.getElementById(sectionId).style.display = 'block';
                });
            });
        });
    </script>
    <script>
 // JavaScript code
    function loadRecentOrders() {
      fetch('../FoodServletList', {
        method: 'GET'
      })
      .then(response => response.json())
      .then(data => {
        // Call a function to update the table with the received data
        updateTable(data);
      })
      .catch(error => console.error('Error:', error));
    }

    function updateTable(data) {
      var tableBody = document.getElementById('recentOrdersTableBody');
      tableBody.innerHTML = '';

      data.forEach(item => {
        var row = document.createElement('tr');

        var nameCell = document.createElement('td');
        nameCell.textContent = item.foodActualName;
        row.appendChild(nameCell);

        var numberCell = document.createElement('td');
        numberCell.textContent = item.priceActualName;
        row.appendChild(numberCell);

        var paymentCell = document.createElement('td');
        paymentCell.textContent = item.foodName;
        row.appendChild(paymentCell);

        var statusCell = document.createElement('td');
        statusCell.textContent = item.foodEmail;
        row.appendChild(statusCell);

        var actionCell = document.createElement('td');
        var actionLink = document.createElement('a');
        actionLink.href = '#';
        actionLink.textContent = 'View Details';
        actionCell.appendChild(actionLink);
        row.appendChild(actionCell);

        tableBody.appendChild(row);
      });
    }
    </script>
    
    
     <script src="js/main.js"></script>
			       <script> 
			           // Use JavaScript to fetch data from the servlet 
			           fetch('../../DatauserShow') 
			               .then(response => response.text()) 
			               .then(data => document.getElementById('dataContainer').innerHTML = data); 
			       </script> 
			       
			       <script> 
			           // Use JavaScript to fetch data from the servlet 
			           fetch('../../DatauserShow') 
			               .then(response => response.text()) 
			               .then(data => document.getElementById('dataContainer1').innerHTML = data); 
			       </script> 
			       
			       
			        <script> 
			           // Use JavaScript to fetch data from the servlet 
			           fetch('../../UserslistShow') 
			               .then(response => response.text()) 
			               .then(data => document.getElementById('userContainer').innerHTML = data); 
			       </script> 
			       <script> 
			           // Use JavaScript to fetch data from the servlet 
			           fetch('../../UserslistShow') 
			               .then(response => response.text()) 
			               .then(data => document.getElementById('userContainer1').innerHTML = data); 
			       </script> 
			       <script> 
			           // Use JavaScript to fetch data from the servlet 
			           fetch('../../ChefslistShow') 
			               .then(response => response.text()) 
			               .then(data => document.getElementById('chefContainer').innerHTML = data); 
			       </script> 
			       <script> 
			           // Use JavaScript to fetch data from the servlet 
			           fetch('../../OrderslistShow') 
			               .then(response => response.text()) 
			               .then(data => document.getElementById('orderContainer').innerHTML = data); 
			       </script> 
			       <script>
					    // Function to update the order count
					    function updateOrderCount() {
					        fetch('../../OrderCountServlet')
					            .then(response => response.text())
					            .then(count => document.getElementById('orderCount').textContent = count)
					            .catch(error => console.log('Error occurred while retrieving order count.', error));
					    }
					
					    // Call the updateOrderCount function initially
					    updateOrderCount();
					
					    // Set an interval to update the order count every 5 seconds
					    setInterval(updateOrderCount, 5000);
					</script>
					 <script>
					    // Function to update the chef count
					    function updateChefCount() {
					        fetch('../../ChefCountServlet')
					            .then(response => response.text())
					            .then(count => document.getElementById('chefCount').textContent = count)
					            .catch(error => console.log('Error occurred while retrieving chef count.', error));
					    }
					
					    // Call the updateChefCount function initially
					    updateChefCount();
					
					    // Set an interval to update the chef count every 5 seconds
					    setInterval(updateChefCount, 5000);
					</script>
					<script>
					    // Function to update the food count
					    function updateFoodCount() {
					        fetch('../../FoodCountServlet')
					            .then(response => response.text())
					            .then(count => document.getElementById('foodCount').textContent = count)
					            .catch(error => console.log('Error occurred while retrieving food count.', error));
					    }
					
					    // Call the updateFoodCount function initially
					    updateFoodCount();
					
					    // Set an interval to update the food count every 5 seconds
					    setInterval(updateFoodCount, 5000);
					</script>
					<script>
					    // Function to update the user count
					    function updateUserDataCount() {
					        fetch('../../UserDataCountServlet')
					            .then(response => response.text())
					            .then(count => document.getElementById('userDataCount').textContent = count)
					            .catch(error => console.log('Error occurred while retrieving user count.', error));
					    }
					
					    // Call the updateUserDataCount function initially
					    updateUserDataCount();
					
					    // Set an interval to update the user count every 5 seconds
					    setInterval(updateUserDataCount, 5000);
					</script>
					
					
<script>
    // Get the modal
    var modal1 = document.getElementById("myModal");
   

    // Get the buttons that open the modals
    var btn1 = document.getElementById("myBtn");


    // When the user clicks the buttons, open the respective modals
    btn1.onclick = function() {
        modal1.style.display = "block";
    }

 

    // When the user clicks anywhere outside of the modals, close them
    window.onclick = function(event) {
        if (event.target == modal1) {
            modal1.style.display = "none";
        } 
    }
</script>
					
					
	
	
</body>

</html>