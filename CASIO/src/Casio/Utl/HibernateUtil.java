package Casio.Utl;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import Casio.Models.*;


public class HibernateUtil {
	private static SessionFactory sessionFactory;
	public static SessionFactory getSessionFactory() {
		if (sessionFactory==null) {
			try {
				Configuration configuration=new Configuration();
				
				//Hibernate settings equivalent to hibernate.cfg.xml's properties
				Properties settings = new Properties();
				settings.put(Environment.DRIVER, "com.microsoft.sqlserver.jdbc.SQLServerDriver");
				settings.put(Environment.URL, "jdbc:sqlserver://localhost;integratedSecurity=True;databaseName=CASIO");
				settings.put(Environment.USER, "localhost");
				settings.put(Environment.PASS, "root");
				settings.put(Environment.DIALECT, "org.hibernate.dialect.SQLServerDialect");
				settings.put(Environment.SHOW_SQL, "true");
				settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
				settings.put(Environment.HBM2DDL_AUTO, "none");
				
				configuration.setProperties(settings);
				configuration.addAnnotatedClass(ChiTietDonHangEntity.class);
				configuration.addAnnotatedClass(CtkmEntity.class);
				configuration.addAnnotatedClass(DonHangEntity.class);
				configuration.addAnnotatedClass(KhuyenMaiEntity.class);
				configuration.addAnnotatedClass(LoaiSanPhamEntity.class);
				configuration.addAnnotatedClass(SanPhamEntity.class);
				configuration.addAnnotatedClass(UsersEntity.class);
				
				ServiceRegistry serviceRegistry=new StandardServiceRegistryBuilder()
						.applySettings(configuration.getProperties()).build();
				
				 System.out.println("Hibernate Java Config serviceRegistry created");
				    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
				    return sessionFactory;
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return sessionFactory;
	}
}
