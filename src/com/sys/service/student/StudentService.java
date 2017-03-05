package com.sys.service.student;

import com.sys.bean.student.Room;
import com.sys.bean.student.Student;
import com.sys.service.base.DAO;

import java.math.BigDecimal;

public interface StudentService extends DAO<Student> {
    void createCard(Integer studentId, String cardNo);

    void saveCardMoney(Integer id, BigDecimal money);
}
