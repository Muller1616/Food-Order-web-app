
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
                    <h2>Welocome<span class="danger"></br>Manager</span></h2>
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
               
               <a href="#" class="sidebar-link" data-section="users">
    <span class="material-icons-sharp">
        person_outline
    </span>
    <h3>Users</h3>
    <span class="message-count" id="userDataCount">27</span>
</a>
                <a href="#" class="sidebar-link" class="active" data-section="Foods" >
                    <span class="material-icons-sharp" >
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
                
                <a href="#" class="sidebar-link" data-section="Chefs">
				    <span class="material-icons-sharp">
				        inventory
				    </span>
				    <h3>Chefs</h3>
				    <span class="message-count" id="chefCount">27</span>
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
 	 <%-- ------------------------------The Users section----------------------------------- --%> 

        <!-- Main Content -->
        <main id="users" class="section" style="display: none;">
            

            <!-- New Users Section -->
            <div class="new-users">
                <h2>New Users</h2>
                <div class="user-list" id="userContainer1">
                    
                    
                        
                       
                        
                   
                </div>
            </div>
            <!-- End of New Users Section -->

		

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
  		<%-- ----------------------------------The Analytics settings section----------------------------------- --%> 
  <main id="Analytics" class="section right-section " style="display: none;">
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
                        <p>Hey, <b>Manager</b></p>
                        <small class="text-muted">Admin</small>
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
                    <h2>Manager</h2>
                    <p>Head Stuff</p>
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
			        
			    </div>
            <!-- End of Recent Orders -->

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
			        
			  
			
            <div class="analyse">
                <div class="sales-container">
                    <div class="status">
                        <div class="info">
                        
                            <h1>ADD New Chief</h1>
                            <center><button type="submit" id="myBtn" style="background-color: skyblue; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;">
                        
				            <img src="images/plus.png" alt="Plus Icon" style="max-width: 50px; max-height: 50px">
				            </button></center>
                        </div>
                        
                    </div>
                </div>
                <div class="sales-container">
                    <div class="status">
                        <div class="info">
                        
                            <h1>Update Chef info</h1>
                            <center><button type="submit" id="myBtn1" style="background-color: skyblue; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;">
                        
				            <img src="images/plus.png" alt="Plus Icon" style="max-width: 50px; max-height: 50px">
				            </button></center>
                        </div>
                        
                    </div>
                </div>
                <div class="sales-container">
                    <div class="status">
                        <div class="info">
                        
                            <h1>Remove Chef</h1>
                            <center><button type="submit" id="myBtn2" style="background-color: skyblue; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;">
                        
				            <img src="images/plus.png" alt="Plus Icon" style="max-width: 50px; max-height: 50px">
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
        
        <h2>Add New Chef</h2>
        <form action="../../InsertChef" method="POST">
            <label for="chefName">Chef Name</label>
            <input type="text" id="chefName" name="chief_name" placeholder="Enter chef name" required>

            <label for="chefPosition">Chef Position</label>
            <input type="text" id="chefPosition" name="chief_position" placeholder="Enter chef position" required>

            <label for="chefPassword">Chef Password</label>
            <input type="password" id="chefPassword" name="chief_password" placeholder="Enter chef password" required>

            <button type="submit">Submit</button>
        </form>
    </div>

</div>
<!-- The Modal -->
<div id="myModal1" class="modal">

  <!-- Modal content -->
   <div class="modal-content">
        
        <h2>Update Chef</h2>
         <form action="../../UpdateChef" method="POST">
         	<label for="chefName">Old Chef's Name</label>
            <input type="text" id="oldchefName" name="old_chief_name" placeholder="Enter chef name" required>
            <label for="chefName">New Chef's Name</label>
            <input type="text" id="newchefName" name="chief_name" placeholder="Enter chef name" required>

            <label for="chefPosition">Chef Position</label>
            <input type="text" id="chefPosition" name="chief_position" placeholder="Enter chef position" required>

            <label for="chefPassword">Chef Password</label>
            <input type="password" id="chefPassword" name="chief_password" placeholder="Enter chef password" required>

            <button type="submit">Update</button>
        </form>
    </div>

</div>
        
        <!-- The Modal -->
<div id="myModal2" class="modal">

  <!-- Modal content -->
   <div class="modal-content">
        
        <h2>Delete Chef</h2>
        <form action="../../DeleteChef" method="POST">
         	
            <label for="chefName"> Chef's Name</label>
            <input type="text" id="chefName" name="chefName" placeholder="Enter chef name" required>

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
					            .then(count => {
            console.log('Chef Count Response:', count); // Log the response text
            document.getElementById('chefCount').textContent = count;
        })
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
					            .then(count =>{ document.getElementById('foodCount').textContent = count;
					            console.log('food count',count)
					            })
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
    var modal2 = document.getElementById("myModal1");
    var modal3 = document.getElementById("myModal2");

    // Get the buttons that open the modals
    var btn1 = document.getElementById("myBtn");
    var btn2 = document.getElementById("myBtn1");
    var btn3 = document.getElementById("myBtn2");

    // When the user clicks the buttons, open the respective modals
    btn1.onclick = function() {
        modal1.style.display = "block";
    }

    btn2.onclick = function() {
        modal2.style.display = "block";
    }

    btn3.onclick = function() {
        modal3.style.display = "block";
    }

    // When the user clicks anywhere outside of the modals, close them
    window.onclick = function(event) {
        if (event.target == modal1) {
            modal1.style.display = "none";
        } else if (event.target == modal2) {
            modal2.style.display = "none";
        } else if (event.target == modal3) {
            modal3.style.display = "none";
        }
    }
</script>
					
					
	
	
</body>

</html>