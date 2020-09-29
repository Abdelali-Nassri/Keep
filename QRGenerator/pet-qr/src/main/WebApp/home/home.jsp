<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
    
<html>
<head>
<meta charset="windows-1256">
<title>Keep</title>
<link rel="icon" type="image/png" href="favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="image/png" href="favicon-16x16.png" sizes="16x16" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js" integrity="sha512-dqw6X88iGgZlTsONxZK9ePmJEFrmHwpuMrsUChjAw1mRUhUITE5QU9pkcSox+ynfLhL15Sv2al5A0LVyDCmtUw==" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" integrity="sha512-8bHTC73gkZ7rZ7vpqUQThUDhqcNFyYi2xgDgPDHc+GXVGHXq+xPjynxIopALmOPqzo9JZj0k6OqqewdGO3EsrQ==" crossorigin="anonymous" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js" integrity="sha384-LtrjvnR4Twt/qOuYxE721u19sVFLVSA4hf/rRt6PrZTmiPltdZcI7q7PXQBYTKyf" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>


</head>
<body>
<div class="d-flex bd-highlight">
  <div class="p-2 flex-fill bd-highlight" style="width: 50%">
  <img src="b3.jpg" class="img-fluid" alt="Responsive image" style="">
  </div>
  <div class="p-2 flex-fill bd-highlight" style="width: 50%">
  <br><br><br>
  <h1 class="display-1 text-center " style="float: center;"><kbd class="shadow-lg  mb-5 bg-warning rounded">Keep</kbd> an <kbd class="shadow-lg  mb-5 bg-success rounded"><i class="eye icon"></i></kbd> on your <kbd class="shadow-lg  mb-5 rounded">pet</kbd> !!</h1>
  <br>
  <br><br><br>
  
  <div class="ui medium form " style=";display: flex;
  justify-content: center;">
<form action="/QRcode" method="post" enctype="multipart/form-data" class="shadow-lg p-3 mb-5 bg-white rounded" style="width: 80%">
  <div class="field form-row">
    <div class="col">
      <input type="text" name="PName" class="form-control" placeholder="Pet's Name">
    </div>
    <div class="col">
      <input type="text" name="PKind" class="form-control" placeholder="Pet's Kind">
    </div>
  </div>
     <div class="field form-row">
    <div class="col">
      <input type="text" name="OName" class="form-control" placeholder="Owner's Name">
    </div>
    <div class="col">
      <input type="text" name="OAddress" class="form-control" placeholder="Owner's Address">
    </div>
  </div>
  <div class="field form-row">
    <div class="col">
      <input type="text" name="OPhone" class="form-control" placeholder="Owner's Phone">
    </div>
    <div class="col">
      <input type="text" name="OEmail" class="form-control" placeholder="Owner's email">
    </div>
  </div>
  
 
  	<div class="field">
  <button class="positive fluid ui submit button" type="submit"><i class="plus icon"></i>Generate QR</button>
  </div>
  </form>
  
 
  </div>

  <div style="display: flex;
  justify-content: center;">
   <img src="${qr}" class="img-fluid"  style="">
	
</div>

<div style="display: flex;
  justify-content: center;">
<a href="/QRdownload/${qr }"${a?' type="button" class="btn btn-outline-success"><i class="download icon"></i></a>':'></a>' }
</div>
<br>
  <div style="display: flex;
  justify-content: center;">
  <div class="alert alert-warning" role="alert" style="width: 80%;">
  You can use this QR code with a necklace on your pet's neck to may avoid lost him !!
</div>
</div>

  </div>
  
  
</div>
<div class="footer text-muted bg-white" style="display: flex;
  justify-content: center;">
    Developed by Abdelali Nassri <kbd>@2020</kbd>
  </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>