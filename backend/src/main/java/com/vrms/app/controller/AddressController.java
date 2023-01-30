package com.vrms.app.controller;

import com.vrms.app.aop.SystemControllerLog;
import com.vrms.app.entity.Address;
import com.vrms.app.service.AddressService;
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
@RequestMapping("/address")
@Api(tags = "预约地点控制器")
@CrossOrigin
public class AddressController {
    @Resource
    private AddressService addressService;

    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始数据", example = "1", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "size", value = "每页显示最大记录数", example = "10", dataType = "Integer", required = true),
            @ApiImplicitParam(name = "address", value = "根据接种地址查询", example = "医院", dataType = "String")
    })
    @GetMapping("/listPage")
    @ApiOperation("分页查询预约地点信息")
    @SystemControllerLog(description = "分页查询预约地点信息")
    public CommonResult listPage(int page, int size, String address) {
        Map<String, Object> map = new HashMap<>();
        map.put("count", addressService.count(address));
        map.put("data", addressService.listPage(page, size, address));
        return CommonResult.success(map);
    }

    @GetMapping("/list")
    @ApiOperation("查询所有预约地点信息")
    @SystemControllerLog(description = "查询所有预约地点信息")
    public CommonResult list() {
        return CommonResult.success(addressService.list());
    }

    @PostMapping("/save")
    @ApiOperation("添加预约地点信息")
    @SystemControllerLog(description = "添加预约地点信息")
    public CommonResult save(@RequestBody Address address) {
        return CommonResult.success(addressService.save(address));
    }

    @PostMapping("/update")
    @ApiOperation("修改预约地点信息")
    @SystemControllerLog(description = "修改预约地点信息")
    public CommonResult update(@RequestBody Address address) {
        return CommonResult.success(addressService.update(address));
    }

    @PostMapping("/remove")
    @ApiOperation("删除预约地点信息")
    @SystemControllerLog(description = "删除预约地点信息")
    public CommonResult remove(Integer addid) {
        return CommonResult.success(addressService.remove(addid));
    }

}
