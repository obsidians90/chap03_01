package com.hybrid.mapper;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import com.hybrid.domain.Emp;
@Mapper
public interface EmpMapper {
	@Select ("select * from emp")
	public List<Emp> readAll();
}
