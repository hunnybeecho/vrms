package com.vrms.app.controller;

import com.vrms.app.aop.SystemControllerLog;
import com.vrms.app.entity.Administrators;
import com.vrms.app.service.AdministratorsService;
import com.vrms.app.tools.CommonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/administrators")
@Api(tags = "管理员控制器")
@CrossOrigin //解决跨域访问问题
public class AdministratorsController {
    @Resource
    private AdministratorsService administratorsService;

    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始数据", example = "1", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "size", value = "每页显示最大记录数", example = "10", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "username", value = "根据管理员名称查询", example = "张三", dataType = "String")
    })
    @GetMapping("/listPage")
    @ApiOperation("分页查询管理员信息")
    @SystemControllerLog(description = "分页查询管理员信息")
    public CommonResult listPage(int page, int size, String username) {
        Map<String, Object> map = new HashMap<>();
        map.put("count", administratorsService.count(username));
        map.put("data", administratorsService.listPage(page, size, username));
        return CommonResult.success(map);
    }

    @PostMapping("/save")
    @ApiOperation("添加管理员信息")
    @SystemControllerLog(description = "添加管理员信息")
    public CommonResult save(@RequestBody Administrators administrators) {
        return CommonResult.success(administratorsService.save(administrators));
    }

    @PostMapping("/update")
    @ApiOperation("修改管理员信息")
    @SystemControllerLog(description = "修改管理员信息")
    public CommonResult update(@RequestBody Administrators administrators) {
        return CommonResult.success(administratorsService.update(administrators));
    }

    @PostMapping("/changeStats")
    @ApiOperation("改变管理员状态")
    @SystemControllerLog(description = "改变管理员状态")
    public CommonResult changeStats(@RequestBody Administrators administrators) {
        return CommonResult.success(administratorsService.changeStats(administrators));
    }

    @PostMapping("/remove")
    @ApiOperation("删除管理员信息")
    @SystemControllerLog(description = "删除管理员信息")
    public CommonResult remove(Integer aid) {
        return CommonResult.success(administratorsService.remove(aid));
    }

    @ApiOperation("管理员登录")
    @SystemControllerLog(description = "登录")
    @GetMapping("/login")
    public CommonResult login(String username, String password) {
        try {
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            Subject subject = SecurityUtils.getSubject();
            if (!subject.isAuthenticated()) {
                subject.login(token);
            }
        } catch (AuthenticationException uae) {
            System.out.println("用户名或密码错误");
            return CommonResult.failed();
        }
        return CommonResult.success(username);
    }

    @ApiOperation("用户注销")
    @GetMapping("/logout")
    public CommonResult logout() {
        SecurityUtils.getSubject().logout();
        return CommonResult.success(200);
    }
}
