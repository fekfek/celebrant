package com.fekade.celebrant.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class DatabaseConfig {
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/applicantdb?useUnicode=true&useJDBCCompliant"
	    		   				+ "TimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
		dataSource.setUsername("root");
		dataSource.setPassword("FryeKonjo");
	       return dataSource;
	   }
	    
	   @Autowired
	   @Bean(name = "sessionFactory")
	   public SessionFactory getSessionFactory(DataSource dataSource) {

	       LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);

	       sessionBuilder.scanPackages("com.fekade.celebrant.model");
	       sessionBuilder.addProperties(getHibernateProperties());

	       return sessionBuilder.buildSessionFactory();
	   }

	   private Properties getHibernateProperties() {
	       Properties properties = new Properties();
	       properties.put("hibernate.show_sql", "true");
	       properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
//	       properties.put("hbm2ddl.auto", "create");	//my addition
	       return properties;
	   }

	   @Autowired
	   @Bean(name = "transactionManager")
	   public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
	       HibernateTransactionManager transactionManager = new HibernateTransactionManager
	    		   												(sessionFactory);
	       return transactionManager;
	   }


}
