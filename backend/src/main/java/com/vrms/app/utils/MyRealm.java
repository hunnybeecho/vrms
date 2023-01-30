package com.vrms.app.utils;

import com.vrms.app.entity.Administrators;
import com.vrms.app.service.AdministratorsService;
import com.vrms.app.service.UsersService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;

//认证类，该类中有shiro提供的认证方法和授权方法，跟数据库的桥梁
public class MyRealm extends AuthorizingRealm {

    @Resource
    private AdministratorsService administratorsService;
    //获得用户认证信息，其实从数据库中查询用户信息
    @Override
    //认证方法
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username =(String)token.getPrincipal();//获得当前登录用户名称
        Administrators user=this.login(username);
        AuthenticationInfo  info=null;//封装到AuthenticationInfo类中从数据库中查询出来的用户信息
        if(user!=null){
            info=new SimpleAuthenticationInfo(user.getUsername(),user.getPassword(),super.getName()) ;
        }
        return info;
    }

    private Administrators login(String username) {
        return administratorsService.login(username);
    }

    //授权方法，处理角色权限
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }


}
