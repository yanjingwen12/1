<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="js/jquery.js"></script>
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
</script>
</head>
<body>
<!--header-->
<header>
 <h1><img src="images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="http://www.deathghost.cn" target="_blank" class="website_icon">站点首页</a></li>
  <li><a href="#" class="clear_icon">清除缓存</a></li>
  <li><a href="#" class="admin_icon">DeathGhost</a></li>
  <li><a href="#" class="set_icon">账号设置</a></li>
  <li><a href="login.html" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="index.html">起始页</a></h2>
 <ul>
  <li>
   <dl>
    <dt>常用布局示例</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="product_list.html" class="active">商品列表示例</a></dd>
    <dd><a href="product_detail.html">商品详情示例</a></dd>
    <dd><a href="recycle_bin.html">商品回收站示例</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>订单信息</dt>
    <dd><a href="order_list.html">订单列表示例</a></dd>
    <dd><a href="order_detail.html">订单详情示例</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>会员管理</dt>
    <dd><a href="user_list.html">会员列表示例</a></dd>
    <dd><a href="user_detail.html">添加会员（详情）示例</a></dd>
    <dd><a href="user_rank.html">会员等级示例</a></dd>
    <dd><a href="adjust_funding.html">会员资金管理示例</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>基础设置</dt>
    <dd><a href="setting.html">站点基础设置示例</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>配送与支付设置</dt>
    <dd><a href="express_list.html">配送方式</a></dd>
    <dd><a href="pay_list.html">支付方式</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>在线统计</dt>
    <dd><a href="discharge_statistic.html">流量统计</a></dd>
    <dd><a href="sales_volume.html">销售额统计</a></dd>
   </dl>
  </li>
  <li>
   <p class="btm_infor">© DeathGhost.cn 版权所有</p>
  </li>
 </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">订单详情示例</h2>
      </div>
      <table class="table">
       <tr>
        <td>收件人：DeathGhost</td>
        <td>联系电话：18300000000</td>
        <td>收件地址：陕西省西安市雁塔区丈八路2000集都市印象18栋2160室</td>
        <td>付款时间：2016-02-01 13:56</td>
       </tr>
       <tr>
        <td>下单时间：2016-02-01 13:56</td>
        <td>付款时间：2016-02-01 13:56</td>
        <td>确认时间：2016-02-01 13:56</td>
        <td>评价时间时间：---</td>
       </tr>
       <tr>
        <td>订单状态：<a>已付款，待发货</a></td>
        <td colspan="3">订单备注：<mark>帮我检查好呀~谢谢~</mark></td>
        </tr>
      </table>
      <table class="table">
       <tr>
        <td class="center"><img src="upload/goods01.jpg" width="50" height="50"/></td>
        <td>这里是产品名称</td>
        <td class="center">A15902</td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">
         <p>颜色：蓝色</p>
         <p>尺码：XXL码</p>
        </td>
        <td class="center"><strong>1</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">包</td>
       </tr>
       <tr>
        <td class="center"><img src="upload/goods02.jpg" width="50" height="50"/></td>
        <td>这里是产品名称</td>
        <td class="center">A15902</td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">
         <p>颜色：蓝色</p>
         <p>尺码：XXL码</p>
        </td>
        <td class="center"><strong>2</strong></td>
        <td class="center"><strong class="rmb_icon">118.00</strong></td>
        <td class="center">包</td>
       </tr>
       <tr>
        <td class="center"><img src="upload/goods03.jpg" width="50" height="50"/></td>
        <td>这里是产品名称</td>
        <td class="center">A15902</td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">
         <p>颜色：蓝色</p>
         <p>尺码：XXL码</p>
        </td>
        <td class="center"><strong>1</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">包</td>
       </tr>
      </table>
      <aside class="mtb" style="text-align:right;">
       <label>管理员操作：</label>
       <input type="text" class="textbox textbox_295" placeholder="管理员操作备注"/>
       <input type="button" value="打印订单" class="group_btn"/>
       <input type="button" value="确认订单" class="group_btn"/>
       <input type="button" value="付款" class="group_btn"/>
       <input type="button" value="配货" class="group_btn"/>
       <input type="button" value="发货" class="group_btn"/>
       <input type="button" value="确认收货" class="group_btn"/>
      </aside>
 </div>
</section>
</body>
</html>
