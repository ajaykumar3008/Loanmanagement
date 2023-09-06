package com.ORM;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "reshma_emp")
@Entity
public class Employee {

	@Id
	private Integer empno;
	private Integer dept_no;
	private String ename;
	private String job;
	private Double sal;

	public Employee() {
	}

	public Employee(Integer empno, Integer dept_no, String ename, String job, Double sal) {
		super();
		this.empno = empno;
		this.dept_no = dept_no;
		this.ename = ename;
		this.job = job;
		this.sal = sal;
	}

	public Integer getEmpno() {
		return empno;
	}

	public Integer getDept_no() {
		return dept_no;
	}

	public String getEname() {
		return ename;
	}

	public String getJob() {
		return job;
	}

	public Double getSal() {
		return sal;
	}

	public void setEmpno(Integer empno) {
		this.empno = empno;
	}

	public void setDept_no(Integer dept_no) {
		this.dept_no = dept_no;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public void setSal(Double sal) {
		this.sal = sal;
	}
}