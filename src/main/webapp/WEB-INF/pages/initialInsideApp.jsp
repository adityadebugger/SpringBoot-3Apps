<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>

<style>
.col-centered {
	float: none;
	margin: 0 auto;
}
</style>
</head>

<body bgcolor="#FFA500">
	<center>
		<header>
		<h1>MAB BANK</h1>
		</header>

	</center>
	<marquee width="100%" behavior="scroll" bgcolor="orange">
		Welcome To Aditya Ticket Enquiry System</marquee>
	<br />
	<br />

	<div class="col-sm-6 col-centered">
		<form class="form-horizontal" id="mabForm"
			action="/addDetails" method="POST" modelAttribute="employee">		 
			 			 
			<div class="form-group">
				<label class="control-label col-sm-3" for="passengerName">Name:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="pname"
						name="passengerName" placeholder="Please Enter" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="pwd">From:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="bpoint"
						name="boardingPoint" placeholder="Please Enter" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="passengerName">To:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="dpoint"
						name="destination" placeholder="Please Enter" required>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="passengerName">Mobile Number:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="mnumber"
						name="mobileno" placeholder="Please Enter" required>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="passengerName">Email Id:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="eid"
						name="emailid" placeholder="Please Enter" required>
				</div>
			</div>
			
			
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="pwd"> Total No.
					Seat:</label>
				<div class="col-sm-9">
					<input type="number" class="form-control" id="noseat"
						name="noOfSeats" placeholder="Please Enter Number Only">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="passengerName">Date:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="jdate"
						name="journeyDate" placeholder="DD/MM/YYYY" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="pwd"> Price:</label>
				<div class="col-sm-9">
					<input type="number" min="1" class="form-control" id="tfare"
						name="ticketFare" placeholder="Please Enter" required>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-9">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</form>
	</div>


	<footer class="col-sm-6 col-centered">
	<h3 class="text-center">Thank you for banking with MAB Bank.</h3>
	</footer>

</body>


<script>
	$(document).ready(function() {
		$('#jdate').datepicker({
			format : 'dd/mm/yyyy'
		}).on('changeDate', function(ev) {
			$(this).datepicker('hide');
		});
		$('#mabForm').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : "glyphicon glyphicon-ok",
				invalid : "glyphicon glyphicon-remove",
				validating : "glyphicon glyphicon-refresh"
			},
			fields : {
				passengerName : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : "Name can't be blank"
						}
					}
				},
				boardingPoint : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : "From can't be blank"
						}
					}
				},
				destination : {
					validators : {
						notEmpty : {
							message : "To can't be blank"
						}
					}
				},
				noOfSeats : {
					validators : {
						notEmpty : {
							message : "No Of Seats can't be blank"
						}
					}
				},
				journeyDate : {
					validators : {
						notEmpty : {
							message : "Date can't be blank or Zero"
						}
					}
				},

				tstamp : {
					validators : {
						notEmpty : {
							message : "Timestamp can't be blank"
						}
					}
				},
				orderId : {
					validators : {
						notEmpty : {
							message : "OrderId can't be blank"
						}
					}
				},
				callbaclUrl : {
					validators : {
						notEmpty : {
							message : "CallBackUr can't be blank"
						}
					}
				},
				ticketFare : {
					validators : {
						stringLength : {
							min : 1,
						},
						notEmpty : {
							message : "Price can't be blank"
						}
					}
				}

			}
		}).on('success.form.bv', function(e) {
			$('#mabForm').data('bootstrapValidator').resetForm();

			// Prevent form submission
			e.preventDefault();

			// Get the form instance
			var $form = $(e.target);

			// Get the BootstrapValidator instance
			var bv = $form.data('bootstrapValidator');

			// Use Ajax to submit form data
			$.get($form.attr('action'), $form.serialize(), function(result) {
				console.log(result);
			}, 'json');
		});
	});
</script>


</html>