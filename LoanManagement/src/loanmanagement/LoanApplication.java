package loanmanagement;

import java.util.Date;

public class LoanApplication {

	int applicantID;
	int customerID;
	Date applicationDate;
	int loanTypeID;
	double amountRequired;
	double emiRangeFrom;
	double emoRangeTo;
	int monthsRequired;
	double cibilScore;
	String loanStatus;
	String remarks;
	int loanProcessedUser;
	Date loanProcessedDate;

	public LoanApplication() {

	}

	public LoanApplication(int applicantID, int customerID, Date applicationDate, int loanTypeID, double amountRequired,
			double emiRangeFrom, double emoRangeTo, int monthsRequired, double cibilScore, String loanStatus,
			String remarks, int loanProcessedUser, Date loanProcessedDate) {

		this.applicantID = applicantID;
		this.customerID = customerID;
		this.applicationDate = applicationDate;
		this.loanTypeID = loanTypeID;
		this.amountRequired = amountRequired;
		this.emiRangeFrom = emiRangeFrom;
		this.emoRangeTo = emoRangeTo;
		this.monthsRequired = monthsRequired;
		this.cibilScore = cibilScore;
		this.loanStatus = loanStatus;
		this.remarks = remarks;
		this.loanProcessedUser = loanProcessedUser;
		this.loanProcessedDate = loanProcessedDate;
	}

	public int getApplicantID() {
		return applicantID;
	}

	public int getCustomerID() {
		return customerID;
	}

	public Date getApplicationDate() {
		return applicationDate;
	}

	public int getLoanTypeID() {
		return loanTypeID;
	}

	public double getAmountRequired() {
		return amountRequired;
	}

	public double getEmiRangeFrom() {
		return emiRangeFrom;
	}

	public double getEmoRangeTo() {
		return emoRangeTo;
	}

	public int getMonthsRequired() {
		return monthsRequired;
	}

	public double getCibilScore() {
		return cibilScore;
	}

	public String getLoanStatus() {
		return loanStatus;
	}

	public String getRemarks() {
		return remarks;
	}

	public int getLoanProcessedUser() {
		return loanProcessedUser;
	}

	public Date getLoanProcessedDate() {
		return loanProcessedDate;
	}

	public void setApplicantID(int applicantID) {
		this.applicantID = applicantID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}

	public void setLoanTypeID(int loanTypeID) {
		this.loanTypeID = loanTypeID;
	}

	public void setAmountRequired(double amountRequired) {
		this.amountRequired = amountRequired;
	}

	public void setEmiRangeFrom(double emiRangeFrom) {
		this.emiRangeFrom = emiRangeFrom;
	}

	public void setEmoRangeTo(double emoRangeTo) {
		this.emoRangeTo = emoRangeTo;
	}

	public void setMonthsRequired(int monthsRequired) {
		this.monthsRequired = monthsRequired;
	}

	public void setCibilScore(double cibilScore) {
		this.cibilScore = cibilScore;
	}

	public void setLoanStatus(String loanStatus) {
		this.loanStatus = loanStatus;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public void setLoanProcessedUser(int loanProcessedUser) {
		this.loanProcessedUser = loanProcessedUser;
	}

	public void setLoanProcessedDate(Date loanProcessedDate) {
		this.loanProcessedDate = loanProcessedDate;
	}

}
