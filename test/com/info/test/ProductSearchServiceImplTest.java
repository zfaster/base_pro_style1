package com.info.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProductSearchServiceImplTest {
	static ApplicationContext context = null;
	static SessionFactory  sf = null;
	@BeforeClass
	public static void init(){
		context = new ClassPathXmlApplicationContext("application*.xml");
		sf = new Configuration().configure().buildSessionFactory();
	}
	@Test
	public void test() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar date = Calendar.getInstance();
		date.add(Calendar.DAY_OF_MONTH, -15);
		System.out.println(format.format(date.getTime()));
	}
	
}
