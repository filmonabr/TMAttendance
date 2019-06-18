package edu.mum.tmAttendanceReport.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.mum.tmAttendanceReport.entity.Entry;

@Repository
public interface EntryRepository extends CrudRepository< Entry, Long> {

	
	@Query(value= "SELECT e from Entry e WHERE e.id=:longid")
	Entry getEntryID(@Param("longid") Long longid);

}
