package com.sys.service.student.impl;

import com.sys.bean.student.Card;
import com.sys.bean.student.Student;
import com.sys.enums.CostType;
import com.sys.service.base.DaoSupport;
import com.sys.service.cost.CostItemService;
import com.sys.service.student.CardService;
import com.sys.service.student.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service("studentService")
public class StudentServiceImpl extends DaoSupport<Student> implements
        StudentService {

    @Autowired
    CardService cardService;
    @Autowired
    CostItemService costItemService;

    /**
     * 办理一卡通
     * @param studentId
     * @param cardNo
     */
    @Override
    public void createCard(Integer studentId,String cardNo){
        Card card = new Card();
        card.setNo(cardNo);
        Student student = find(studentId);
        card.setStudent(student);
        cardService.save(card);
        student.setCard(card);
        update(student);
    }

    @Override
    public void saveCardMoney(Integer id, BigDecimal money) {
        Student student = find(id);
        Card card = student.getCard();
        cardService.store(card.getId(),money);
    }
}
