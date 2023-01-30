package com.vrms.app.controller;

import com.vrms.app.aop.SystemControllerLog;
import com.vrms.app.entity.Users;
import com.vrms.app.service.UsersService;
import com.vrms.app.tools.CommonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/users")
@Api(tags = "用户控制器")
@CrossOrigin
public class UsersController {
    @Resource
    private UsersService usersService;

    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始数据", example = "1", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "size", value = "每页显示最大记录数", example = "10", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "username", value = "根据用户名称查询", example = "张三", dataType = "String")
    })
    @GetMapping("/listPage")
    @ApiOperation("分页查询用户信息")
    @SystemControllerLog(description = "分页查询用户信息")
    public CommonResult listPage(int page, int size, String username) {
        Map<String, Object> map = new HashMap<>();
        map.put("count", usersService.count(username));
        map.put("data", usersService.listPage(page, size, username));
        return CommonResult.success(map);
    }

    @GetMapping("/list")
    @ApiOperation("查询所有预约用户注册信息")
    @SystemControllerLog(description = "查询所有预约用户注册信息")
    public CommonResult list() {
        return CommonResult.success(usersService.list());
    }

    @PostMapping("/save")
    @ApiOperation("添加用户信息")
    @SystemControllerLog(description = "添加用户信息")
    public CommonResult save(@RequestBody Users users) {
        return CommonResult.success(usersService.save(users));
    }

    @PostMapping("/update")
    @ApiOperation("修改用户信息")
    @SystemControllerLog(description = "修改用户信息")
    public CommonResult update(@RequestBody Users users) {
        return CommonResult.success(usersService.update(users));
    }

    @PostMapping("/changeStats")
    @ApiOperation("改变用户状态")
    @SystemControllerLog(description = "改变用户状态")
    public CommonResult changeStats(@RequestBody Users users) {
        return CommonResult.success(usersService.changeStats(users));
    }

    @PostMapping("/remove")
    @ApiOperation("删除用户信息")
    @SystemControllerLog(description = "删除用户信息")
    public CommonResult remove(Integer uid) {
        return CommonResult.success(usersService.remove(uid));
    }
}
