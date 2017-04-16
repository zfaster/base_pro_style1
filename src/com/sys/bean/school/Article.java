package com.sys.bean.school;

import com.sys.system.Renewable;

import javax.persistence.*;
import java.util.Date;

/**
 * 新闻
 */
@Entity
@Table(name = "t_article")
public class Article {
    @Id
    @GeneratedValue
    private Integer id;
    @Column
    @Renewable
    private String title;
    @Column
    @Lob
    @Renewable
    private String content;
    @Column
    private Date createTime = new Date();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
