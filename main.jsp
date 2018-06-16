<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head lang="en">
    <meta charset="UTF-8">
    <title>主页</title>
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <link rel="stylesheet" href="css/font-awesome.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/video.js/6.7.3/video-js.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/video.js/6.7.3/video.js"></script>
</head>
<body>
<div style="position:absolute;width:1150px;height:610px;top:50%;left:50%;margin-left:-575px;margin-top:-305px">
<figure>
    <p style="color:#4679AC;font-family:SimHei;margin-left: 1000px;margin-top: 10px;"><span>欢迎您:</span>${username}</p>
    <p style="display:none;" id="idbtn"  >${id}</p>
    <!--标题-->
    <div style="margin-bottom: 10px">
    <figcaption>北 京 师 范 大 学 教 育 学 部</figcaption>
	<!--选择视频下拉菜单0609-->
    <div class="styled-select">
        <select id="videoSelect">
        <option>第一个视频</option>
        <option>第二个视频</option>
        </select>
    </div>
    </div>
    <!--播放器-->
    <div>
    <div class="player" style="float:left" >
        <!--视频-->
        <!--
        <video id="video" src="video/fun.mp4" height="700" width="360"   ></video>
        -->
        <video
            id="video"
            class="video-js"
            preload="auto"
            poster="//vjs.zencdn.net/v/oceans.png"
 	    	 height="700" width="360" 
			 data-setup={}
			>
			  
            <source src="video/fun.mp4" type="video/mp4"></source>
			  <source src="video/index.mp4" type="video/mp4"></source>
			 
            <p class="vjs-no-js">
            To view this video please enable JavaScript, and consider upgrading to a
            web browser that
            <a href="http://videojs.com/html5-video-support/" target="_blank">
            supports HTML5 video
            </a>
        </p>
        </video>
        <!--进度条-->
        <div class="controls">
            <!--播放、暂停,fa fa-play是字体的格式,switch转换，expand扩张-->
            <a href="javascript:;" class="switch fa fa-play"></a>
            <!--全屏-->
            <img src="pic/expand.png" alt="expand"  class="expand fa fa-expand" >
            <a href="javascript:;" ></a>
            </img>
            <!--进度条-->
            <div class="progress">
                <!--下载进度-->
                <div class="loaded"></div>
                <!--播放速度-->
                <div class="line"></div>
                <!--进度的条-->
                <div class="bar"></div>
            </div>
            <!--时间-->
            <div class="timer">
                <span class="current">00:00:00</span>/
                <span class="total">00:00:00</span>
            </div>
        </div>	
    </div>
    
    </div>

	<!--评论列表-->
	<div>
	<p style="margin-left:740px;margin-top:10px;margin-bottom:10px;">
	<font size="5" face="arial" color="617798">评论列表${user.id}
	<button class="button" style="margin-left:220px;" id="showallbtn">所有评论</button>
	</font>
	</p>
	</div>
	<div style="width:410px;height:350px;overflow:scroll;margin-left:20px;float:left;overflow-x:hidden;"  id="commentarea">
	
	<div class="comment-list">
        <div class="comment-box clearfix" user="self">
            <div class="comment-content">
                <p class="comment-text"><span class="user">我：</span>写的太好了。</p>
				    <!--一级评论的时间-->
                    <p style="color: #ccc; margin-top: 3px; line-height: 16px; position: relative;">
                        2014-02-19 14:36
                        <a href="javascript:;" class="comment-praise" total="1" my="0" style="display: inline-block">1 赞</a>
                        <a href="javascript:;" class="comment-operate">删除</a>
                    </p>
            </div>
			<div style="margin-left:15px">
			    <p class="comment-text">
			    <span class="user">天下第一：</span>你写的更好。
			    </p>
				<!--二级评论的时间0609-->
				<p style="color: #ccc; margin-top: 3px; line-height: 16px; position: relative;">
                        2014-02-19 14:36
				</p>
			</div>
            <div class="text-box" style="margin-top:5px;">
                <textarea class="comment" autocomplete="off" style="float:left"></textarea>
		        <button class="btn " style="margin-top:15px;float:left">回复</button>
            </div>
	    </div>
    </div>

    </div>
   
    <!--节点进度条-->
    <div class="jindu">
        <div id='jd1'  class="jindu-1"></div>
        <div id='jd2'  class="jindu-2"></div>
        <div id='jd3'  class="jindu-3"></div>
        <div id='jd4'  class="jindu-4"></div>
        <div id='jd5'  class="jindu-5"></div>
        <div id='jd6'  class="jindu-6"></div>
        <div id='jd7'  class="jindu-7"></div>
        <div id='jd8'  class="jindu-8"></div>
        <div id='jd9'  class="jindu-9"></div>
        <div id='jd10' class="jindu-10"></div>
        <div id='jd11' class="jindu-11"></div>
        <div id='jd12' class="jindu-12"></div>
        <div id='jd13' class="jindu-13"></div>
        <div id='jd14' class="jindu-14"></div>
        <div id='jd15' class="jindu-15"></div>
        <div id='jd16' class="jindu-16"></div>
        <div id='jd17' class="jindu-17"></div>
        <div id='jd18' class="jindu-18"></div>
        <div id='jd19' class="jindu-19"></div>
        <div id='jd20' class="jindu-20"></div>
        <div id='jd21' class="jindu-21"></div>
        <div id='jd22' class="jindu-22"></div>
        <div id='jd23' class="jindu-23"></div>
        <div id='jd24' class="jindu-24"></div>
        <div id='jd25' class="jindu-25"></div>
        <div id='jd26' class="jindu-26"></div>
        <div id='jd27' class="jindu-27"></div>
        <div id='jd28' class="jindu-28"></div>
        <div id='jd29' class="jindu-29"></div>
        <div id='jd30' class="jindu-30"></div>
        <div id='jd31' class="jindu-31"></div>
        <div id='jd32' class="jindu-32"></div>
        <div id='jd33' class="jindu-33"></div>
        <div id='jd34' class="jindu-34"></div>
        <div id='jd35' class="jindu-35"></div>
        <div id='jd36' class="jindu-36"></div>
        <div id='jd37' class="jindu-37"></div>
        <div id='jd38' class="jindu-38"></div>
        <div id='jd39' class="jindu-39"></div>
        <div id='jd40' class="jindu-40"></div>
        <div id='jd41' class="jindu-41"></div>
        <div id='jd42' class="jindu-42"></div>
        <div id='jd43' class="jindu-43"></div>
        <div id='jd44' class="jindu-44"></div>
        <div id='jd45' class="jindu-45"></div>
        <div id='jd46' class="jindu-46"></div>
        <div id='jd47' class="jindu-47"></div>
        <div id='jd48' class="jindu-48"></div>
        <div id='jd49' class="jindu-49"></div>
        <div id='jd50' class="jindu-50"></div>
    </div>
	
    <!--评论框0609-->
    <div style = "margin-top:370px;">
        <textarea style="border: 1px solid #eee;display: block; width:674px;height:40px;float:left;resize:none;" autocomplete="off" id="name" ></textarea>
    
        <p class="submit" style="margin-top:10px;float:left">
            <input type="submit" id="commentbtn" value="评论" />
        </p>
     </div>

    
	
</figure>
</div>
<!--背景-->
<script type="text/javascript">
		window.onload = function() {
			var config = {
				vx : 4,
				vy : 4,
				height : 2,
				width : 2,
				count : 100,
				color : "121, 162, 185",
				stroke : "100, 200, 180",
				dist : 6000,
				e_dist : 20000,
				max_conn : 10
			}
			CanvasParticle(config);
		}
	</script>
	<script type="text/javascript" src="js/canvas-particle.js"></script>
<!--引入JQ-->
<script src="js/jquery.min.js"></script>
<!--功能实现-->
<script>
    //1.当能播放的时候显示播放器，能知道视频的总时长，计算出总时长,
    //2.设置播放、暂停按钮
    //3.显示播放进度
    //4.全屏
    //5.跃进播放
    //6.播放结束后重置视频，播放按钮设置为暂停状态

    //获得视频列表
    var videoList=[
    {
    "video_id": 11,
    "url": "http://www.zhangxinxu.com/study/media/cat.mp4"
    },
    {
    "video_id": 12,
    "url": "http://www.runoob.com/try/demo_source/mov_bbb.mp4"
    },
    {
    "video_id": 13,
    "url": "http://www.runoob.com/try/demo_source/movie.ogg"
    }
    ];
    //videolist的url
    var videoUrls="http://219.224.25.22:8080/frame/videoList";
    var videoindex=0;
    var commentUrl="http://219.224.25.22:8080/frame/publishComment";
	var replyUrl="http://219.224.25.22:8080/frame/reply";
	var thumbupUrl="http://219.224.25.22:8080/frame/addThumbs";
	var deleteUrl="http://219.224.25.22:8080/frame/deleteComment";
	var getCommentUrl="http://219.224.25.22:8080/frame/getComment";
	var updateurl="http://219.224.25.22:8080/frame/getCommentByVideoIdAndVideoTime";
	var switchVideoUrl="http://www.baidu.com";
    var username='';
    var userid='';
    /* set  the video src*/
    var allcomment;
    var hotpoint=[];
	var canplay=1;
	var isclick=-1;
	var currentTime=0;
	//获得userid
	userid=$("#idbtn").html();
	username='${username}';
	
    
    $.ajax({
        type: "GET",
        url: videoUrls,
        headers: {  'Access-Control-Allow-Origin': '*' },
        //data: {username:$("#username").val(), content:$("#content").val()},
        //data: {username:$("#username").val(), content:$("#content").val()},
        dataType: "json",
        async: false,
        success: function(data){
			 //console.log("请求所有视频");
			//console.log(data);
			//localStorage.setItem("videoList",data);
            videoList=data;
	    $("#videoSelect").empty();
	   	 $.each(videoList,function(n,value){
	    	var videoname=value["videoname"] || '视频'+n;
	    	var videoid=value["video_id"];
		var videourl=value["url"];
	    	$("#videoSelect").append("<option value="+n+" videoid="+videoid+" videourl="+videourl+"  >"+videoname+"</option>"); 
	    });
	    $("#videoSelect").change(function(){
	    	//console.log($(this).val());
			console.log('change')
			videoindex=parseInt($(this).val());
			var selected=$(this).find("option:selected")
	    	var videoid=selected.attr("videoid");
			var videourl=selected.attr("url");
	    	//console.log(videoid);
			//send click log
			Log(switchVideoUrl,'swithvideo',userid,videoid);
			
			switchvideo();
		

	    });

	    
        }
    });

	function switchvideo(url)
	{
		var player = videojs('video');
		//player.src({type: 'video/framio', src: url});
		player.src(url);
		player.load();
		//$("#video").attr("src",url).load();
		var btn = $('.switch');
		btn.removeClass('fa-pause');
		
	}
	
	
	function flush()
	{
		$('#commentarea').empty();
	}
	function updateComment()
	{
		
		for (var i=1;i<=50;i++)
		{
			$("#jd"+i).attr("style","display:none;");;
			hotpoint[i]=-1;
		}
		var video = document.querySelector('video');
		var vd_time="-1";
		var range='';
		if(isclick!=-1)
		{
			vd_time=video.duration/20*(parseInt(isclick)-1);
			range=Math.ceil(video.duration/50);
		}
		
		$.ajax({
		type: "GET",
        url: getCommentUrl,
        data: {type:"getComment",comment_user_content:'',comment_user_id:'',content:'',time:'',video_time:vd_time, thumbs_up_number:'',video_id:videoList[videoindex%videoList.length].video_id,
                    user_id: userid ,range:range},
        headers: {  'Access-Control-Allow-Origin': '*' },
        contentType: "application/x-www-form-urlencoded; charset=utf-8", 
        dataType: "json",
        success: function(data){
				var all="";
				
				//console.log("更新平路");
				console.log("update comment!");
				//console.log(data);
				if(isclick==-1)
					flush();
				
				for(var j=0;j<data.length;j++)
				{
					var userid1=data[j]["user_id"];
					var content1=data[j]["content"];
					var thumbs_up_number1=data[j]["thumbs_up_number"];
					var time1=data[j]["time"];
					var video_time=data[j]["video_time"];
					var user_name1=data[j]["user_name"]
					//console.log(user_name1);
					var comment_id1=data[j]["comment_id"]
					 //得到元素
					var video = document.querySelector('video');
					for(var z=0;z<50;z++ )
					{
						//var e=Math.ceil(video.duration/50);
						var e=Math.ceil(videojs('video').duration()/50);
						//console.log("视频时长："+videojs('video').duration());
						var arr=video_time.split(":");
						var h= parseInt(arr[0]);
						var m=parseInt(arr[1]);
						var s=parseInt(arr[2]);
						if((h*3600+m*60+s)<(e+z*e)&& z*e<=(h*3600+m*60+s))
						{
							hotpoint[z]=1;
							//$("#jd"+(i+1)).show();
							//$("#jd"+(i+1)).attr("style");
							var n=z+1;
							$("#jd"+n).removeAttr("style");;
						}
					}
					if(isclick!=-1) continue;
					//flush();
					var comment_id1 = data[j]["comment_id"];
							
                        var txt="\t<div class=\"comment-list\" userid='"+userid1 +"' content='"+content1+"'  time='"+ time1+"' thumbs_up_number='"+thumbs_up_number1+"' comment_id='"+comment_id1+"' user_name='"+user_name1+"' >\n" +
                            "        <div class=\"comment-box clearfix\" user=\"self\">\n" +
                            "            <div class=\"comment-content\">\n" +
                            "                <p class=\"comment-text\"><span class=\"user\">"+user_name1+"：</span>"+content1+"</p>\n" +
                            "                    <p class=\"comment-time\">\n" +
                            "                        "+time1+"\n" +
                            "                        <a  class=\"comment-praise\" total=\"1\" my=\"0\" style=\"display: inline-block\">"+thumbs_up_number1+" 赞</a>\n" +
                            "                        <a  class=\"comment-operate\">删除</a>\n" +
                            "                    </p>\n" +
                            "            </div>\n" ;
							for(var k=0;k<data[j]["replaylist"].length;k++)
							{
								//console.log(data[j]);
								var comment_user_content1=data[j]["replaylist"][k]["comment_user_content"];
								var comment_user_id1=data[j]["replaylist"][k]["comment_comment_id"];
								//console.log(comment_user_id1);
								var comment_user_name1=data[j]["replaylist"][k]["user_name"];
								//console.log(comment_user_name1);
								txt+="<div style=\"margin-left:15px\"><p class=\"comment-text\"><span class=\"user\">"+comment_user_name1+"：</span>"+comment_user_content1+"</p></div>"
							}
								txt+=
                            "            <div class=\"text-box\" style=\"margin-left:15px;\">\n" +
                            "                <textarea class=\"comment\" autocomplete=\"off\" style=\"float:left\"></textarea>\n" +
                            "\t\t        <button class=\"btn \" style=\"float:left\">回复</button>\n" +
                            "            </div>\n" +
                            "\t    </div>\n" +
                            "    </div>";
							$('#commentarea').append(txt);
					
				}
           }});
	}

	function dot()
	{
			for (var i=1;i<=50;i++)
	        {
		
		        $("#jd"+i).on('click',function () {
			    //flush();
			    var type="getComment";
          	    var comment_user_content='';
         	    var comment_user_id='';
   			    var content='';
           	
 			    var date=new Date();
 			    var time=date.getFullYear()+'-'+ (date.getMonth()+1)+'-'+date.getDate()+' '+ date.getHours()+':'+ date.getMinutes()+':'+ date.getSeconds();
    		    //alert(time);
    		    var myid=$(this).attr('id')
    		    var number=myid.substring(2,myid.length);
    		    isclick=number;
          	    //var video_time=(getFormatTime(video.duration*((parseInt(number)-1)/50)));
          	    
			    var thumbs_up_number=0;
			    var video_id=videoList[videoindex].video_id;
			    //得到元素
			    var video = document.querySelector('video');
			    var range=Math.ceil(video.duration/50);
			    var video_time=getFormatTime(range*(parseInt(number)-1));
			    /*设置时间*/
			    video.currentTime=range*(parseInt(number)-1);
			    //console.log("range: "+ range);
			    //console.log("number:"+number);
			    var user_id=userid;
			    
                $.ajax({
                    type: "GET",
                    url: updateurl,
                    data: {type:type,comment_user_content:comment_user_content,comment_user_id:comment_user_id,content:content,time:time,video_time:video_time, thumbs_up_number:thumbs_up_number,video_id:video_id,
                            user_id: user_id,range:range,clickbarNumber:number },
                    headers: {  'Access-Control-Allow-Origin': '*' },
                    dataType: "json",
                    success: function(data){
                    		console.log(data);
                    		flush();
							var all="";
							for(var j=0;j<data.length;j++)
							{
								var userid1=data[j]["user_id"];
								var content1=data[j]["content"];
								var thumbs_up_number1=data[j]["thumbs_up_number"];
								var time1=data[j]["time"];
								var comment_id1 = data[j]["comment_id"];
								var user_name1=data[j]["user_name"];
							
                                var txt="\t<div class=\"comment-list\" userid='"+userid1 +"' content='"+content1+"'  time='"+ time1+"' thumbs_up_number='"+thumbs_up_number+"' comment_id='"+comment_id1+"' user_name='"+user_name1+"'    >\n" +
                                "        <div class=\"comment-box clearfix\" user=\"self\">\n" +
                                "            <div class=\"comment-content\">\n" +
                                "                <p class=\"comment-text\"><span class=\"user\">"+user_name1+"：</span>"+content1+"</p>\n" +
                                "                    <p class=\"comment-time\">\n" +
                                "                        "+time1+"\n" +
                                "                        <a  class=\"comment-praise\" total=\"1\" my=\"0\" style=\"display: inline-block\">"+thumbs_up_number1+" 赞</a>\n" +
                                "                        <a  class=\"comment-operate\">删除</a>\n" +
                                "                    </p>\n" +
                                "            </div>\n" ;
							    for(var k=0;k<data[j]["replaylist"].length;k++)
							    {
								    var comment_user_content1=data[j]["replaylist"][k]["comment_user_content"];
								    var comment_user_id1=data[j]["replaylist"][k]["comment_comment_id"];
								    var comment_user_name1=data[j]["replaylist"][k]["user_name"];
                                    var commenttime1=data[j]["replaylist"][k]["comment_time"];
								    txt+="<div style=\"margin-left:15px\"><p class=\"comment-text\"><span class=\"user\">"+comment_user_name1+"：</span>"+comment_user_content1+"</p>" +
                                        "\t\t\t<p style=\"color: #ccc;margin-top: 3px;line-height: 16px;position: relative;\">\n" +
                                         +commenttime1+
                                        "            </p></div>"
							    }
							    txt+=
                                "            <div class=\"text-box\" style=\"margin-left:15px;\">\n" +
                                "                <textarea class=\"comment\" autocomplete=\"off\" style=\"float:left\"></textarea>\n" +
                                "\t\t        <button class=\"btn \" style=\"float:left\">回复</button>\n" +
                                "            </div>\n" +
                                "\t    </div>\n" +
                                "    </div>";
							    $('#commentarea').append(txt);
                            }
                    }
                });


		        })
		        
	        }

	}



	//发送切换日志
	function Log(url,logtype,userid,video_id)
	{

			var date=new Date();
			var currTime = $('.current');
			var time=date.getFullYear()+'-'+ date.getMonth()+'-'+date.getDay()+' '+ date.getHours()+':'+ date.getMinutes()+':'+ date.getSeconds();
			var video_time=currTime.html();
			var user_id=userid;
			$.ajax({
					type: "GET",
 					url: url,
               	data: {type:logtype,time:time,video_time:video_time,video_id:video_id,
                            user_id: userid},
                 	headers: {  'Access-Control-Allow-Origin': '*' },
                 	dataType: "json",
                 	success: function(data){
                 		
						console.log(data);
						}
					});

	}











		
		

	
	//1.当能播放的时候显示播放器，能知道视频的总时长，计算出总时长
    //1.1自定义函数计算出时间
    var getFormatTime = function (time) {
          //小时
          var h = Math.floor(time / 3600);
          //分钟
          var m = Math.floor(time % 3600 / 60);
          //秒
          var s = Math.floor(time % 60);
          //返回值
          return ((h < 10 ? '0' + h : h) + ':' + (m < 10 ? '0' + m : m) + ':' + (s < 10 ? '0' + s : s));
       }

	
	
   $(function () {

       //得到元素
       var video = document.querySelector('video');
       /*暂停按钮*/
       var btn = $('.switch');
       /*全屏按钮*/
       var full = $('.expand');
       /*下载进度*/
       var load = $('.loaded');
       /*播放进度*/
       var line = $('.line');
       /*进度检测条*/
       var bar = $('.bar');
       /*当前时间*/
       var currTime = $('.current');
       /*总时长*/
       var totalTime = $('.total');
       /*commentbtn*/
        var commentbtn=$('#commentbtn');
	    /* set the init video src */
	    //$('#video').attr("src",videoList[0].url).load();//更新url
	
	    updateComment();


        $("#showallbtn").on('click',function(){
            			 isclick=-1;
            			 updateComment();
            			 dot();

        });

		
		$('#prevbtn').on('click',function () {
			
			if(videoindex==0)
			 	$("#video").attr("src",videoList[videoindex%videoList.length].url).load();
			else
			{
				$("#video").attr("src",videoList[--videoindex%videoList.length].url).load();
				isclick=-1;
				canplay=-1;
				//dot();
			}
			btn.removeClass('fa-pause');
				//$("#video").attr("src",videoList[(--videoindex%videoList.length+videoList.length)%videoList.length].url).load();
		});
		$('#nextbtn').on('click',function () {
			if(videoindex==videoList.length-1)
				$("#video").attr("src",videoList[videoList.length-1].url).load();
			else
			{
			 $("#video").attr("src",videoList[++videoindex%videoList.length].url).load();
			 //$("#video").attr("autoplay","true");
			// $("#video").pause();
			 //video.play();
			 //video.pause();
			 
			 isclick=-1;
			 //updateComment();
			 //dot();
			 btn.removeClass('fa-pause');
			}
		});

        //为评论设置事件。
        commentbtn.on('click',function () {
            var commentcontent =$("#name").val();
            if(commentcontent=='')
                alert("消息不能为空！");
            else
            {
                var type="publishComment";
                var comment_user_content='';
                var comment_user_id='';
                var content=$("#name").val();
                //alert(content);
                var date=new Date();
                var time=date.getFullYear()+'-'+ date.getMonth()+'-'+date.getDay()+' '+ date.getHours()+':'+ date.getMinutes()+':'+ date.getSeconds();
                //alert(time);
                var video_time=currTime.html();
                var thumbs_up_number=0;
                var video_id=videoList[videoindex].video_id;
                $.ajax({
                    type: "GET",
                    url: commentUrl,
                    data: {type:type,comment_user_content:comment_user_content,comment_user_id:comment_user_id,content:content,time:time,video_time:video_time, thumbs_up_number:thumbs_up_number,video_id:video_id,
                            user_id: userid  },
                    headers: {  'Access-Control-Allow-Origin': '*' },
                    contentType: "application/x-www-form-urlencoded; charset=utf-8", 
                    dataType: "json",
                    success: function(data){
                        if (data.status!='OK')
                        {
                            alert("评论失败！");
                            return ;
                        }
						var comment_id=data.comment_id;
						//console.log("评论");
						//console.log(data);

                        var txt="\t<div class=\"comment-list\" userid='"+userid +"' content='"+content+"'  time='"+ time+"' thumbs_up_number='"+thumbs_up_number+"' comment_id='"+comment_id+"'  user_name='"+username+"' >\n" +
                            "        <div class=\"comment-box clearfix\" user=\"self\">\n" +
                            "            <div class=\"comment-content\">\n" +
                            "                <p class=\"comment-text\"><span class=\"user\">"+username+"：</span>"+content+"</p>\n" +
                            "                    <p class=\"comment-time\">\n" +
                            "                        "+time+"\n" +
                            "                        <a  class=\"comment-praise\" total=\"1\" my=\"0\" style=\"display: inline-block\">"+thumbs_up_number+" 赞</a>\n" +
                            "                        <a  class=\"comment-operate\">删除</a>\n" +
                            "                    </p>\n" +
                            "            </div>\n" +
                            "            <div class=\"text-box\" style=\"margin-left:15px;\">\n" +
                            "                <textarea class=\"comment\" autocomplete=\"off\" style=\"float:left\"></textarea>\n" +
                            "\t\t        <button class=\"btn \" style=\"float:left\">回复</button>\n" +
                            "            </div>\n" +
                            "\t    </div>\n" +
                            "    </div>";



			            //$('#commentarea').append(txt);
			            $('#commentarea').prepend(txt);

			            for(var z=0;z<50;z++ )
                        {
                            //var e=Math.ceil(video.duration/50);
                            var e=Math.ceil(document.getElementById('video').duration/50);
                            //console.log("视频时长："+video.duration);
                            var arr=video_time.split(":");
                            var h= parseInt(arr[0]);
                            var m=parseInt(arr[1]);
                            var s=parseInt(arr[2]);
                            if((h*3600+m*60+s)<(e+z*e)&& z*e<=(h*3600+m*60+s))
                            {
                                 hotpoint[z]=1;
                                //$("#jd"+(i+1)).show();
                                //$("#jd"+(i+1)).attr("style");
                                 var n=z+1;
                                $("#jd"+n).removeAttr("style");;
                            }
                        }
                    }
                });
  


            }


            }
        )

	$('#commentarea').delegate('.btn','click',function () {
		var replyarea=$(this).parent().children(".comment");
		//console.log(replyarea);
		//alert(replyarea.val());
		var replycontent=replyarea.val();
		if(replycontent=='')
			alert("消息不能为空！");
		else
		{
			var type="relpy";
			var comment_user_content=replycontent;
			var comment_parent=$(this).parent().parent().parent();
			var comment_user_id=comment_parent.attr('userid');
			var content=comment_parent.attr('content');
			var content_id=comment_parent.attr('content_id');
			var comment_id=comment_parent.attr('comment_id');
			//alert(comment_id);
			var date=new Date();
			var time=date.getFullYear()+'-'+ date.getMonth()+'-'+date.getDay()+' '+ date.getHours()+':'+ date.getMinutes()+':'+ date.getSeconds();
			var video_time=currTime.html();
			var thumbs_up_number= comment_parent.attr('thumbs_up_number');
			var video_id=videoList[videoindex].video_id;
			var user_id=userid;
			var elem=$(this);
			$.ajax({
					type: "GET",
 					url: replyUrl,
               	data: {type:type,comment_user_content:comment_user_content,comment_user_id:comment_user_id,content:content,time:time,video_time:video_time, thumbs_up_number:thumbs_up_number,video_id:video_id,
                            user_id: userid,comment_id:comment_id },
                 	headers: {  'Access-Control-Allow-Origin': '*' },
                 	dataType: "json",
                 	success: function(data){
                 		
						var txt="<div style=\"margin-left:15px\"><p class=\"comment-text\"><span class=\"user\">"+username+"：</span>"+comment_user_content+"</p></div>"
						elem.parent().before(txt);
						}
					});


		}

	});
	

	

	
	
	$('#commentarea').delegate('.comment-praise','click',function () {
		
			var type="thumb_up";
			var comment_user_content='';
			var comment_parent=$(this).parent().parent().parent().parent();
			var comment_user_id=comment_parent.attr('userid');
			var content=comment_parent.attr('content');
			//alert(content);
			var date=new Date();
			var time=date.getFullYear()+'-'+ (date.getMonth()+1)+'-'+date.getDate()+' '+ date.getHours()+':'+ date.getMinutes()+':'+ date.getSeconds();
			var video_time=currTime.html();
			var thumbs_up_number= comment_parent.attr('thumbs_up_number');
			var comment_id=comment_parent.attr('comment_id');
			
			var video_id=videoList[videoindex].video_id;
			var user_id=userid;
			var zan=$(this);
			$.ajax({
					type: "GET",
 					url: thumbupUrl,
               	data: {type:type,comment_user_content:comment_user_content,comment_user_id:comment_user_id,content:content,time:time,video_time:video_time, thumbs_up_number:thumbs_up_number,video_id:video_id,
                            user_id: userid,comment_id:comment_id  },
                 	headers: {  'Access-Control-Allow-Origin': '*' },
                 	dataType: "json",
                 	success: function(data){
                 	            if(data.status!="OK")
                 	            {
                 	                alert("您已经点赞啦！不能重复点赞啦！");
                 	                return;
                 	            }
								var number=parseInt(zan.html())+1;
								//alert(number+" 赞");
								var comment_user_id=comment_parent.attr('thumbs_up_number',number);
								zan.html(number+" 赞");
						}
					});


	});
		
		//delete the commment
		$('#commentarea').delegate('.comment-operate','click',function () {
		
			var type="delete";
			var comment_user_content='';
			var comment_parent=$(this).parent().parent().parent().parent();
			var comment_user_id=comment_parent.attr('userid');
			var content=comment_parent.attr('content');
			alert(content)
			var comment_id=comment_parent.attr('comment_id');
			
			
			
			
			var date=new Date();
			var time=date.getFullYear()+'-'+ date.getMonth()+'-'+date.getDay()+' '+ date.getHours()+':'+ date.getMinutes()+':'+ date.getSeconds();
			var video_time=currTime.html();
			var thumbs_up_number= comment_parent.attr('thumbs_up_number');
			var video_id=videoList[videoindex].video_id;
			var user_id=userid;
			$.ajax({
					type: "GET",
 					url: deleteUrl,
               	data: {type:type,comment_user_content:comment_user_content,comment_user_id:comment_user_id,content:content,time:time,video_time:video_time, thumbs_up_number:thumbs_up_number,video_id:video_id,
                            user_id: userid,comment_id:comment_id  },
                 	headers: {  'Access-Control-Allow-Origin': '*' },
                 	dataType: "json",
                 	success: function(data){
                 	         if(data.status=="OK")
                 	        {
                 	        	comment_parent.remove();
                 	        	return 0;
                 	        }
							   	alert("你没有权限，删除该评论！");
						}
					});
			 //comment_parent.remove();
	});
	
		dot();

		//setInterval("flushComment()",1000);
		

       //1.2当能播放的时候显示播放器oncanplay，能知道视频的总时长，计算出总时长
       video.oncanplay= function () {

    	  	//canplay=1;
    		updateComment();
    		dot();
    		
			console.log('can paly');
    		//video.currentTime=currentTime;
           /*显示视频*/
          video.style.display="block";
           /*duration返回视频的总时长*/
           //canplay=1;
           //console.log(video.duration);
          
           /*计算出总时长*/
           totalTime.html(getFormatTime(video.duration));
           //dot();
       }
       //2.设置播放、暂停按钮
       //1.设置按钮的点击事件，并且进行判断,paused设置或返回视频是否暂停，play()开始播放视频，pause()暂停播放视频
       btn.on('click', function () {
           // 如果是暂停就开启，反之关闭
           if(video.paused){
                video.play();
           }else{
               video.pause();
           }
           /*设置按钮的关闭图标,切换开始和关闭*/
           btn.toggleClass('fa-pause');
       })
       //3.显示播放进度,ontimeupdate当视频播放位置改变时运行的脚本，currentTime设置或返回视频的播放进度,duration视频的总长度
        video.ontimeupdate= function () {
    	   	//ev.preventDefault();
            /*当前播放时间的百分比*/
            var pre = (video.currentTime/video.duration)*100+'%';
            /*设置进度条的宽度*/
            line.css('width',pre);
            /*显示当前播放的时间*/
            currTime.html(getFormatTime(video.currentTime));
        }
       //4.全屏,设置按钮的点击事件,设置全屏方法webkitRequestFullScreen()
       full.on('click', function () {
           video.webkitRequestFullscreen();
       })
        //5.跃进播放,点击bar就跳到该进度
       bar.on('click', function (e) {
           /*计算出bar占的比例*/
          var scale = e.offsetX/bar.width();
           /*需要去的时间*/
           var currTime = scale*video.duration;
           /*设置时间*/
           if(!isNaN(video.duration)) {
           		video.currentTime=currTime;
           }
           video.currentTime=currTime;
           currentTime=currTime;

           //return;
       })

       //6.播放结束后重置视频，播放按钮设置为暂停状态,ended返回视频是否已经结束,设置视频的结束事件onended
           video.onended= function () {
				if(videoindex!=videoList.length-1)
				{
					$("#video").attr("src",videoList[++videoindex%videoList.length].url).load();//更新url
					//updateComment();
					//dot();
				}
				
               //$(#video).attr("autoplay","true");//直接播放
               /*当前时间为00:00:00*/
               currTime.html(getFormatTime(video.currentTime));
               /*设置总时间*/
               totalTime.html(getFormatTime(video.duration));
               /*回到初始画面*/
               video.currentTime=0;
               /*重置按钮*/
               btn.removeClass('fa-pause');
               /*设置进度条的宽度为0*/
               line.css("width",'0px');
           }
   })
</script>
</body>
</html>
