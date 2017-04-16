package com.sys.service.school.impl;

import com.sys.bean.school.Article;
import com.sys.bean.school.ClassRoom;
import com.sys.service.base.DaoSupport;
import com.sys.service.school.ArticleService;
import com.sys.service.school.ClassRoomService;
import org.springframework.stereotype.Service;

@Service("articleService")
public class ArticleServiceImpl extends DaoSupport<Article> implements
        ArticleService {
}
