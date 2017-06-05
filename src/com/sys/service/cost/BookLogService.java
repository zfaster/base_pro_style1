package com.sys.service.cost;

import com.sys.bean.cost.BookLog;
import com.sys.service.base.DAO;

public interface BookLogService extends DAO<BookLog> {
    BookLog backBook(Integer id);
}
