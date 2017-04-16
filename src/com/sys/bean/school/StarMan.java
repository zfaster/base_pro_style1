package com.sys.bean.school;

import com.sys.system.Renewable;

import javax.persistence.*;
import java.util.Date;

/**
 * 风采人物
 */
@Entity
@Table(name = "t_star_man")
public class StarMan {
    @Id
    @GeneratedValue
    private Integer id;
    @Column
    @Renewable
    private String name;
    @Column
    @Renewable
    private String type;
    @Column
    private String image;
    @Column
    @Renewable
    private String intro;

    /**
     * 获得图片保存路径
     * @return
     */
    public String getImagePath(){
        if(this.id != null && this.image != null){
            return "images/star/"+this.id+"/"+this.image;
        }
        return null;
    }
    /**
     * 获得图片默认保存路劲
     * @return
     */
    public String getSavePath(){
        if(this.id != null){
            return "/images/star/"+this.id+"/";
        }
        return null;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }
}
