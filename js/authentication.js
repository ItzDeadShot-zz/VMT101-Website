/*
    Checking if local storage is empty or not:
        if empty:
            Initialize array
        otherwise:
            Store data from local storage to array
*/
var allUsers = [];  // array to store all users
var currentUser = ''; // variable to store current user in logged in system
var rememberMe = 0 // variable to check remember me value

if (localStorage.getItem("myStorage") == null) {
  allUsers = [
    {
      username: "user",
      password: "user",
    }
  ];
} else {
  allUsers = JSON.parse(localStorage.getItem("myStorage"));
}

console.log(allUsers); // Outputting current users to console

/*
    Login function which will check if username and password is in array and login the user into system
*/
function login() {
  var _username = document.getElementById("username");
  var _password = document.getElementById("password");
  var error = document.getElementById("error");
  var _remember_me = document.getElementById("remember_me");
  var valid = false;
  error.innerHTML = "";

  //validation to make sure both fields are filled
  if (_username.value === "" || _password.value === "") {
    error.innerHTML = "Make sure fields are not empty!";
    return false;
  }

  //looping through each element of array to find username and password
  for (let user in allUsers) {
    if (
      _username.value == allUsers[user].username &&
      _password.value == allUsers[user].password
    ) {
      valid = true;
      currentUser =  allUsers[user].username;
    }
  }

  //if user exists then login to the system, else show error message
  if (valid) {
    alert("Successfully Logged In!");
    if (_remember_me.checked == true) {
      rememberMe = 1
      localStorage.setItem('rememberMe', rememberMe)
    }
    localStorage.setItem("myUser", currentUser);
    location.href = "tutorial.html";
  } else {
    error.innerHTML = "Incorrect Credentials!";
    console.log("Incorrect Credentials!");
  }
}

/*
    Register function to register new user into the system
*/
function register() {
  var _username = document.getElementById("username");
  var _password = document.getElementById("password");

  // Validation to make sure both fields are filled, if validation is correct register new user
  if (_username.value === "" || _password.value === "") {
    error.innerHTML = "Make sure fields are not empty!";
  } else {
    allUsers.push({ username: _username.value, password: _password.value });
    localStorage.setItem("myStorage", JSON.stringify(allUsers));
    alert("Registered Successfully, proceed to Login!");
    location.href = "index.html";
  }
}
