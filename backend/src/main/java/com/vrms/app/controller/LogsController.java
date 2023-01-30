package com.vrms.app.controller;

import com.vrms.app.service.LogsService;
import com.vrms.app.tools.CommonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/logs")
@Api(tags = "日志控制器")
@CrossOrigin
public class LogsController {
    @Resource
    private LogsService logsService;

    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始数据", example = "1", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "size", value = "每页显示最大记录数", example = "10", dataType = "Integer", required = true)
    })
    @GetMapping("/listPage")
    @ApiOperation("分页查询日志信息")
    public CommonResult listPage(int page, int size) {
        Map<String, Object> map = new HashMap<>();
        map.put("count", logsService.count());
        map.put("data", logsService.listPage(page, size));
        return CommonResult.success(map);
    }
}
