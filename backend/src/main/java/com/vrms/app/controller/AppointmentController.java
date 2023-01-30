package com.vrms.app.controller;

import com.vrms.app.aop.SystemControllerLog;
import com.vrms.app.entity.Address;
import com.vrms.app.entity.Administrators;
import com.vrms.app.entity.Appointment;
import com.vrms.app.service.AppointmentService;
import com.vrms.app.tools.CommonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/appointment")
@Api(tags = "预约控制器")
@CrossOrigin
public class AppointmentController {
    @Resource
    private AppointmentService appointmentService;

    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始数据", example = "1", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "size", value = "每页显示最大记录数", example = "10", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "username", value = "根据预约用户名称查询", example = "张三", dataType = "String")
    })
    @GetMapping("/listPage")
    @ApiOperation("分页查询预约信息")
    @SystemControllerLog(description = "分页查询预约信息")
    public CommonResult listPage(int page, int size, String username) {
        Map<String, Object> map = new HashMap<>();
        map.put("count", appointmentService.count(username));
        map.put("data", appointmentService.listPage(page, size, username));
        return CommonResult.success(map);
    }

    @PostMapping("/save")
    @ApiOperation("添加预约信息")
    @SystemControllerLog(description = "添加预约信息")
    public CommonResult save(@RequestBody Appointment appointment) {
        return CommonResult.success(appointmentService.save(appointment));
    }

    @PostMapping("/changeStats")
    @ApiOperation("改变接种状态")
    @SystemControllerLog(description = "改变接种状态")
    public CommonResult changeStats(@RequestBody Appointment appointment) {
        return CommonResult.success(appointmentService.changeStats(appointment));
    }
}
