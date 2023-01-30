package com.vrms.app.controller;

import com.vrms.app.aop.SystemControllerLog;
import com.vrms.app.entity.Vaccines;
import com.vrms.app.service.VaccinesService;
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
@RequestMapping("/vaccines")
@Api(tags = "疫苗控制器")
@CrossOrigin
public class VaccinesController {
    @Resource
    private VaccinesService vaccinesService;

    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始数据", example = "1", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "size", value = "每页显示最大记录数", example = "10", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "avcname", value = "根据疫苗名称查询", example = "新冠肺炎疫苗", dataType = "String")
    })
    @GetMapping("/listPage")
    @ApiOperation("分页查询疫苗信息")
    @SystemControllerLog(description = "分页查询疫苗信息")
    public CommonResult listPage(int page, int size, String avcname) {
        Map<String, Object> map = new HashMap<>();
        map.put("count", vaccinesService.count(avcname));
        map.put("data", vaccinesService.listPage(page, size, avcname));
        return CommonResult.success(map);
    }

    @GetMapping("/list")
    @ApiOperation("查询所有疫苗信息")
    @SystemControllerLog(description = "查询所有疫苗信息")
    public CommonResult list() {
        return CommonResult.success(vaccinesService.list());
    }

    @PostMapping("/save")
    @ApiOperation("添加疫苗信息")
    @SystemControllerLog(description = "添加疫苗信息")
    public CommonResult save(@RequestBody Vaccines vaccines) {
        return CommonResult.success(vaccinesService.save(vaccines));
    }

    @PostMapping("/update")
    @ApiOperation("修改疫苗信息")
    @SystemControllerLog(description = "修改疫苗信息")
    public CommonResult update(@RequestBody Vaccines vaccines) {
        return CommonResult.success(vaccinesService.update(vaccines));
    }

    @PostMapping("/remove")
    @ApiOperation("删除疫苗信息")
    @SystemControllerLog(description = "删除疫苗信息")
    public CommonResult remove(Integer avcid) {
        return CommonResult.success(vaccinesService.remove(avcid));
    }
}
