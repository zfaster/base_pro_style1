package com.sys.service.cost.iml;

import com.sys.bean.cost.BookLog;
import com.sys.enums.CostType;
import com.sys.service.base.DaoSupport;
import com.sys.service.cost.BookLogService;
import com.sys.service.student.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;

@Service("bookLogService")
public class BookLogServiceImpl extends DaoSupport<BookLog> implements
        BookLogService {

    @Autowired
    private CardService cardService;
    @Override
    public BookLog backBook(Integer id) {
        BookLog log = find(id);
        log.setEndTime(new Date());
        int day = getIntervalDays(log.getBeginTime(),log.getEndTime());
        int payDay = day-30;
        BigDecimal cost = BigDecimal.ZERO;
        if(payDay>0){
            cost = BigDecimal.valueOf(payDay*0.1);
        }
        log.setCost(cost);
        if(cost.compareTo(BigDecimal.ZERO)>0){
            cardService.cost(log.getCard().getId(),cost, CostType.BOOK);
        }
        return log;

    }
    public  int getIntervalDays(Date oldDate, Date newDate){
        if(oldDate.after(newDate)){
            throw new  IllegalArgumentException("时间先后顺序不对!");
        }
        //将转换的两个时间对象转换成Calendard对象
        Calendar can1 = Calendar.getInstance();
        can1.setTime(oldDate);
        Calendar can2 = Calendar.getInstance();
        can2.setTime(newDate);
        //拿出两个年份
        int year1 = can1.get(Calendar.YEAR);
        int year2 = can2.get(Calendar.YEAR);
        //天数
        int days = 0;
        Calendar can = null;
        //减去小的时间在这一年已经过了的天数
        //加上大的时间已过的天数
        days -= can1.get(Calendar.DAY_OF_YEAR);
        days += can2.get(Calendar.DAY_OF_YEAR);
        can = can1;
        for (int i = 0; i < Math.abs(year2-year1); i++) {
            //获取小的时间当前年的总天数
            days += can.getActualMaximum(Calendar.DAY_OF_YEAR);
            //再计算下一年。
            can.add(Calendar.YEAR, 1);
        }
        return days;
    }
}
