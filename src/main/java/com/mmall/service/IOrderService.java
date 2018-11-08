package com.mmall.service;

import com.github.pagehelper.PageInfo;
import com.mmall.common.ServerResponse;
import com.mmall.vo.OrderVo;

import java.util.Map;

/**
 * Created by huankai on 2018/11/7.
 */
public interface IOrderService {

    // 创建订单
    ServerResponse createOrder(Integer userId,Integer shippingId);
    // 取消订单
    ServerResponse<String> cancel(Integer userId,Long orderNo);
    // 查询购物车已勾选商品明细
    ServerResponse getOrderCartProduct(Integer userId);
    // 获取订单详情
    ServerResponse<OrderVo> getOrderDetail(Integer userId, Long orderNo);
    // 获取订单列表
    ServerResponse<PageInfo> getOrderList(Integer userId, int pageNum, int pageSize);

    ServerResponse pay(Long orderNo, Integer userId, String path);

    ServerResponse aliCallback(Map<String,String> params);

    ServerResponse<Boolean> queryOrderPayStatus(Integer userId,Long orderNo);

    // backend
    ServerResponse<PageInfo> manageList(int pageNum,int pageSize);
    ServerResponse<OrderVo> manageDetail(Long orderNo);
    ServerResponse<PageInfo> manageSearch(Long orderNo,int pageNum,int pageSize);
    ServerResponse<String> manageSendGoods(Long orderNo);
}
