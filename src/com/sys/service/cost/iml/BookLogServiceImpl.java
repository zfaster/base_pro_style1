package com.sys.service.cost.iml;

import com.sys.bean.cost.BookLog;
import com.sys.bean.student.Card;
import com.sys.service.base.DaoSupport;
import com.sys.service.cost.BookLogService;
import com.sys.service.student.CardService;
import org.springframework.stereotype.Service;

@Service("bookLogService")
public class BookLogServiceImpl extends DaoSupport<BookLog> implements
        BookLogService {

}
