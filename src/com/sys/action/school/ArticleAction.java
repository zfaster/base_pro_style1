package com.sys.action.school;

import com.sys.bean.school.Article;
import com.sys.bean.school.Student;
import com.sys.service.base.DAO;
import com.sys.web.action.BaseAction;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;

@Controller
@Scope("prototype")
public class ArticleAction extends BaseAction<Article> {

	private String actionPath = "control/school/article";
	private String title;
	private File image;
	private String imageFileName;
	private String imageContentType;

	@Override
	public String execute() throws Exception {
		LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
		orderBy.put("id", "desc");
		StringBuffer whereSql = new StringBuffer(" 1 = 1 ");
		List<Object> params = new ArrayList<Object>();
		if(title != null && !"".equals(title)){
			whereSql.append("and o.title like ? ");
			params.add("%"+title+"%");
		}
		pm = baseService.findScrollData(
				orderBy,whereSql.toString(),params.toArray());
		setPageInfo();
		return SUCCESS;
	}


	@Resource(name="articleService")
	public void setBaseService(DAO baseService) {
		this.baseService = baseService;
	}
	public void setTitle(String title) {
		try {
			this.title = new String(title.getBytes("iso8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	public String getActionPath() {
		return actionPath;
	}

	public void setActionPath(String actionPath) {
		this.actionPath = actionPath;
	}

	public String getTitle() {
		return title;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
}
