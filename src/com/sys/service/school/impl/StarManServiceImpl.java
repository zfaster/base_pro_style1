package com.sys.service.school.impl;

import com.sys.bean.school.StarMan;
import com.sys.service.base.DaoSupport;
import com.sys.service.school.StarManService;
import org.springframework.stereotype.Service;

@Service("starManService")
public class StarManServiceImpl extends DaoSupport<StarMan> implements
        StarManService {
}
