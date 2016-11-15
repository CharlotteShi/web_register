<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>心脏病自测</title>
    <script src=" http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script> 
<style type="text/css"> body, th, td, h1, h2, h3, input, select, textarea { font: 12px "Courier New", "宋体"; } body, form, ul, li, h1, h2, h3 { margin: 0px; padding: 0px; } ul, li { list-style: none; } body { background: #DEF5FF; } label { cursor: pointer; } a { color: #09C; text-decoration: underline; } a:hover { color: #F90; text-decoration: none; } #container { margin: 80px auto; width: 780px; border-left: 10px solid #9EDAF3; background: #FFF; } #title { font-size: 36px; color: #333333; text-align: center; padding-top: 20px; padding-bottom: 20px; font-weight: bold; border-bottom: 2px solid #9EDAF3; } #intro { background: #F8F8F8; border: 1px solid #DCDCDC; line-height: 20px; margin: 10px; padding: 10px; } .q { border-bottom: 1px dashed #D8D8D8; margin: 0px 10px; padding: 10px 0px; } .q_title { font-size: 14px; font-weight: bold; color: #00789B; padding-top: 5px; padding-bottom: 5px; } .q_answer { padding-left: 20px; } #act { text-align: center; height: 50px; padding-top: 10px; } #bt_submit { font-size: 14px; } #footer { text-align: center; border-top: 2px solid #9EDAF3; line-height: 20px; height: 30px; padding-top: 15px; } </style> 
    <script type="text/javascript"> $(function()
    { $(".q").hover(
       function()
       { $(this).css("background-color","#F5F5F5");},
	   function()
	   {$(this).css("background-color","transparent");}); 
	   
     $("#form1").submit(
       function()
	   { var valid=true; 
	     $("div.q_answer:has(:radio)").each(
		      function()
			  { var v=$(this).find("input:radio:checked").val(); 
			    if(v==undefined)
				{ alert("对不起，所有包含单选框的问题必须选择一个答案！"); 
				  $(this).parent(".q").css("background-color","#FFF4D8"); 
				  $("html,body").animate({scrollTop:$(this).offset().top-37},"slow"); 
				  valid=false; 
				  return false; } }); 
	     return(valid); });
 });  </script>
  </head>
  <body>
                    <h1 id="title">心脏病自测</h1>
                    <form id="form1" name="form1" method="post" action="end.jsp?id=1">
                    
                    <div class="q">
                    <h2 class="q_title">1.您幼年患过流感，扁桃腺炎，猩红热，中耳炎吗？</h2> 
                    <div class="q_answer"> 
                    <ul>
                    <td>
                    <label><input type="radio" id="'a_1_0'" name="a_1" value="0" />从未患过</label>
                    <label><input type="radio" id="'a_1_1'" name="a_1" value="5" />患过，但不严重，治疗后得到恢复</label>
                    <label><input type="radio" id="'a_1_2'" name="a_1" value="10" />多次患过，未得到及时治疗</label>
                    </td>
                    </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">2.您在性格方面属于：不善于适应环境，缺乏泰然自若的态度，爱争强好胜？</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_2_0'" name="a_2" value="0" />不符合</label>
                    <label><input type="radio" id="'a_2_1'" name="a_2" value="5" />有些方面符合</label>
                    <label><input type="radio" id="'a_2_2'" name="a_2" value="10" />完全符合</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">3.您经常参加体育锻炼吗？</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_3_0'" name="a_3" value="0" />经常参加</label>
                    <label><input type="radio" id="'a_3_1'" name="a_3" value="5" />较少参加或时断时续</label>
                    <label><input type="radio" id="'a_3_2'" name="a_3" value="10" />不参加</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">4.您在饮食方面？</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_4_0'" name="a_4" value="0" />喜欢吃新鲜蔬菜，豆制品，适度吃鱼和肉</label>
                    <label><input type="radio" id="'a_4_1'" name="a_4" value="5" />介于两者之间</label>
                    <label><input type="radio" id="'a_4_2'" name="a_4" value="10" />有胃口，喜爱吃肉，很少吃蔬菜</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">5.您每天平均的食盐摄入量为？</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_5_0'" name="a_5" value="0" />6克以下</label>
                    <label><input type="radio" id="'a_5_1'" name="a_5" value="5" />8克左右</label>
                    <label><input type="radio" id="'a_5_2'" name="a_5" value="10" />10克以上</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">6.您脉搏每分钟跳？</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_6_0'" name="a_6" value="0" />70次或者80次左右</label>
                    <label><input type="radio" id="'a_6_1'" name="a_6" value="5" />接近100次或者60次</label>
                    <label><input type="radio" id="'a_6_2'" name="a_6" value="10" />60次以下或100次以上</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">7.您血压正常吗？（正常舒张压在60~90mmHg之间，收缩压在140mmHg左右）</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_7_0'" name="a_7" value="0" />正常</label>
                    <label><input type="radio" id="'a_7_1'" name="a_7" value="5" />有点高，适当休息可恢复</label>
                    <label><input type="radio" id="'a_7_2'" name="a_7" value="10" />血压高或高低波动大</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">8.您在劳累或精神紧张时，出现过心悸，胸闷，胸痛的感觉吗？</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_8_0'" name="a_8" value="0" />没有</label>
                    <label><input type="radio" id="'a_8_1'" name="a_8" value="5" />有时</label>
                    <label><input type="radio" id="'a_8_2'" name="a_8" value="10" />总是</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">9.您睡觉时，如果平卧会感觉？</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_9_0'" name="a_9" value="0" />很舒服，没什么不适</label>
                    <label><input type="radio" id="'a_9_1'" name="a_9" value="5" />偶尔胸闷</label>
                    <label><input type="radio" id="'a_9_2'" name="a_9" value="10" />胸部发闷，无法平卧</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div class="q"> 
                    <h2 class="q_title">10.请您观察一下您的嘴唇？</h2>
                    <div class="q_answer"> 
                    <ul> 
                    <td>
                    <label><input type="radio" id="'a_10_0'" name="a_10" value="0" />红润</label>
                    <label><input type="radio" id="'a_10_1'" name="a_10" value="5" />介于两者之间</label>
                    <label><input type="radio" id="'a_10_2'" name="a_10" value="10" />发乌，发紫</label>
                    </td> </ul> </div> </div>
                    
                    
                    <div id="act"> <input type="submit" name="bt_submit" id="bt_submit" value=" 提交 " /> </div>
 
 </form> 
 
 
</body>
 


</html>