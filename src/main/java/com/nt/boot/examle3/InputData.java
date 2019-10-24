package com.nt.boot.examle3;

public class InputData {

	private String passengerName;
	private String boardingPoint;
	private String destination;
	private String noOfSeats;
	private String journeyDate;
	private String ticketFare;
	private String mobileno;
	private String emailid;

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getPassengerName() {
		return passengerName;
	}

	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}

	public String getBoardingPoint() {
		return boardingPoint;
	}

	public void setBoardingPoint(String boardingPoint) {
		this.boardingPoint = boardingPoint;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getNoOfSeats() {
		return noOfSeats;
	}

	public void setNoOfSeats(String noOfSeats) {
		this.noOfSeats = noOfSeats;
	}

	public String getJourneyDate() {
		return journeyDate;
	}

	public void setJourneyDate(String journeyDate) {
		this.journeyDate = journeyDate;
	}

	public String getTicketFare() {
		return ticketFare;
	}

	public void setTicketFare(String ticketFare) {
		this.ticketFare = ticketFare;
	}

	@Override
	public String toString() {
		return "InputData [passengerName=" + passengerName + ", boardingPoint=" + boardingPoint + ", destination="
				+ destination + ", noOfSeats=" + noOfSeats + ", journeyDate=" + journeyDate + ", ticketFare="
				+ ticketFare + "]";
	}

}
