package edu.mum.tmAttendanceReport.repository;

import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.mum.tmAttendanceReport.entity.Block;

import edu.mum.tmAttendanceReport.entity.DateInfo;

@Repository
public interface DateInfoRepository extends CrudRepository<DateInfo, DateInfo>{

	@Query(value="SELECT d FROM DateInfo d WHERE d.date=:date")
	public DateInfo getDateInfoByDate(@Param("date") Date date);

	public List<DateInfo> findByDateAfter(Date startDate);
	
	@Query(value="SELECT d FROM DateInfo d WHERE d.date >=:startDate ")
	List<DateInfo> Daysgreaterthan(@Param("startDate")java.sql.Date startDate);


}
