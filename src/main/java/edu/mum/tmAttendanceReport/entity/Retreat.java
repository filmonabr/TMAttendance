package edu.mum.tmAttendanceReport.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="retreat")
public class Retreat implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@OneToOne
	@JoinColumn(name="student_id")
	private Student studentid;

//	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date retreatDate;

	
	public Retreat() {}

	public Retreat(Long id, Student studentid, Date retreatDate) {
		this.id = id;
		this.studentid = studentid;
		this.retreatDate = retreatDate;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Student getStudentid() {
		return studentid;
	}

	public void setStudentid(Student studentid) {
		this.studentid = studentid;
	}

	public Date getNumberOfRetreats() {
		return retreatDate;
	}

	public void setNumberOfRetreats(Date retreatDate) {
		this.retreatDate = retreatDate;
	}

	@Override
	public String toString() {
		return "Retreat [id=" + id + ", studentid=" + studentid + ", retreatDate=" + retreatDate + "]";
	}
	
	
}
