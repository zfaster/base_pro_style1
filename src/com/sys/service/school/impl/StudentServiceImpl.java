package com.sys.service.school.impl;

import com.sys.bean.school.Student;
import com.sys.service.base.DaoSupport;
import com.sys.service.school.StudentService;
import org.springframework.stereotype.Service;

@Service("studentService")
public class StudentServiceImpl extends DaoSupport<Student> implements
        StudentService {
}
