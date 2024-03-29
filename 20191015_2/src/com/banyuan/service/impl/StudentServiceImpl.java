/**
 * 
 */
package com.banyuan.service.impl;

import java.util.List;
import java.util.Vector;

import com.banyuan.dao.StudentDao;
import com.banyuan.entity.Student;
import com.banyuan.service.StudentService;
import com.banyuan.util.MyFactory;

/**
 * @author yw
 * 2019年9月20日  下午3:10:01
 *
 */
public class StudentServiceImpl implements StudentService{
	
	private StudentDao studentDao=	(StudentDao)MyFactory.getInstance("studentDao");

	
	//逻辑
	public Vector<Student> getData(int curPage, int count) throws RuntimeException{
//		BaseDB sdb=new BaseDB();
//		StudentDao dao=new StudentDaoImpl();
		Vector<Student> d=studentDao.getData(curPage, count);
		//curPage范围0 -1   >总页数?
//		return sdb.getData(curPage, count);
		return d;
	}

	@Override
	public Vector getDataByName(int curPage, int count, Student student) {
		
		//判断页面的数值是否在有效范围curPage>0
		
		//符合条件，调用dao层功能
//		StudentDao dao=new StudentDaoImpl();
		Vector d=studentDao.getDataByName(curPage, count,student);
		
		return d;
	}

	@Override
	public List getStudentByProc(Student student) {
		List d=studentDao.getStudentByProc(student);
		System.out.println("StudentService=====d="+d);
		//二维变成一维
		List d2=new Vector();
		d2.add(((Vector)d.get(0)).get(0));
		
		return d2;
	}

}
