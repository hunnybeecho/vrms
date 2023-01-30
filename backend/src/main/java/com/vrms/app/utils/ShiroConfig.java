package com.vrms.app.utils;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {
    @Bean  //将MyRealm对象放到spring容器中
    public  MyRealm getMyRealm(){
        return new MyRealm();
    }
    @Bean//将DefaultWebSecurityManager对象放到spring容器中
    public DefaultWebSecurityManager getDefaultWebSecurityManager(){
        DefaultWebSecurityManager securityManager=new DefaultWebSecurityManager();
        //将getMyRealm归DefaultWebSecurityManager管理
        securityManager.setRealm(this.getMyRealm());
        return securityManager;
    }

    @Bean(name = "shiroFilterFactoryBean")  //将ShiroFilterFactoryBean对象放到spring容器中
    public ShiroFilterFactoryBean   shiroFilterFactoryBean(){
        ShiroFilterFactoryBean  filterFactoryBean=new ShiroFilterFactoryBean();
        filterFactoryBean.setSecurityManager(this.getDefaultWebSecurityManager());//注入上面的getSecurityManager获得SecurityManager对象
        Map<String,String>map=new LinkedHashMap<>(); //通过map设置过滤规则
        map.put("/**","anon"); //设置用户登录请求地址是匿名访问，不需要认证就可以访问资源
        filterFactoryBean.setFilterChainDefinitionMap(map);
        return filterFactoryBean;
    }
}
