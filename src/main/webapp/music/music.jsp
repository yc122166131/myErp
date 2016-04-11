<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<link type="image/x-icon" rel="shortcut icon" href="images/play.ico">
	<title>一个简单的音乐播放器</title>
	<link rel="stylesheet" href="css/index.css" />
	<link rel="stylesheet" type="text/css" href="css/animate.css"/>
	<style type="text/css">
		.overlayPlay{width: 100%;height:100%;position: absolute;left: 0%;top: 0%;z-index: 19919191;transition: all 1s ease;}
		.overlayPlay .lrc{padding: 20px 50px;width: 100%;height: 100%;
			background:rgba(0,0,0,0.8);border-radius: 0 0 5px 5px;color: #8d94a6;
			font-size: 14px;text-align: center;transition: all 1s ease;}
		.overlayPlay .lrc .title{color: #30b192;font-size: 18px;margin-bottom: 16px;margin: 100px auto 30px;}
		.overlayPlay .lrc .wrap{height: 170px;overflow: hidden;position: relative;}
		.overlayPlay .lrc .content{padding-top: 72px;position: absolute;width: 100%;left: 0}
		.overlayPlay .lrc .hg{color: red}
		
		.singers{width: 1000px;height: 700px;border: 1px solid red;  margin-left: 35%;
    margin-top: 10%;}
		.singers ul{overflow: hidden;}
		.singers ul li{float: left;margin: 20px;position: relative;cursor: pointer;transition: all 0.4s ease-in;list-style: none;}
		.singers ul li img{border-radius: 30px;}
		.singers ul li span{transition: all 0.4s ease-in;border-radius: 30px;}
		
		.resetRotate{transform:rotate(0deg);}
		.pic_rotate{animation:musicPic 200s ease;-webkit-animation:musicPic 200s ease;-moz-animation:musicPic 200s ease;}
		.pic_rotate_pause{animation-play-state:paused;-webkit-animation-play-state:paused;-moz-animation-play-state:paused;}
		.pic_rotate_run{animation-play-state:running;-webkit-animation-play-state:running;-moz-animation-play-state:running;}
		    @keyframes musicPic{
				0%{transform:rotateZ(0deg);}
				100%{transform:rotateZ(5000deg);}
			}

			@-webkit-keyframes musicPic{
				0%{-webkit-transform:rotateZ(0deg);}
				100%{-webkit-transform:rotateZ(5000deg);}
			}

			@-moz-keyframes musicPic{
				0%{-moz-transform:rotateZ(0deg);}
				100%{-moz-transform:rotateZ(5000deg);}
			}
	</style>
</head>
<body>
	
	<style type="text/css">
		.spec{background: rgba(0,0,0,0.5);width:200px;height:170px;position: absolute;top: 0;left: 0;}
		.singers i{background-image: url(images/ico-play.png);
			    width: 56px;
			    height: 56px;
			    position: absolute;
			    top: 100px;
			    left: 74px;
			    background-position: 0 0;transition: all 0.4s ease-in-out;opacity: 0;}
	</style>
	
	<div class="singers">
		<ul>
			<li><img src="images/singer/wxy.jpg" width="200px" height="170px" title="恋人心-魏新雨" alt="s1.lrc"/>
				<input type="hidden" value="s1.mp3"/>
				<span ></span>
				<i></i>
			</li>
			<li><img src="images/singer/hx.jpg" width="200px" height="170px" title="他比我更适合-胡夏" alt="s2.lrc"/>
				<input type="hidden" value="s2.mp3"/>
				<span></span>
				<i></i>
			</li>
			
			
			
		</ul>
		
	</div>
	
	<!-- 播放器 -->
	<div id="player" class="player">
		
		<div class="control clearfix">
			<!-- 进度条 -->
			<div class="play-pro">
				<span id="songProgressBar" class="p b"></span>
				<span id="songProgressLoad" class="p l"></span>
				<span id="songProgressCurrent" class="p w"></span>
				<span id="songProgressHideBar" class="p h"></span>
			</div>

			<!-- 音量控制 -->
			<div class="play-vol">
				<img id="volumeBtn" class="b" src="images/vol.png" width="18px" height="18px"/>
				<span id="volumePanel" class="p">
					<span id="volumeProgressBar" class="c">
						<span class="g">
							<i id="volumeProgressCurrent" class="w"></i>
						</span>
						<span id="volumeCurrentBtn" class="d"></span>
					</span>
				</span>
			</div>

		</div>
		
		<style type="text/css">
			.plicon{
				background-image: url("images/player_bg.png");
				display: inline-block;
			}
			.prev{width: 27px;height: 24px;background-position: -76px -35px;position: absolute;top: 38px;left: 119px;}
			.bofang{width: 32px; height: 38px;background-position: -110px -44px;position: absolute;top: 29px;left: 174px;cursor: pointer;}
			.zanting{width: 30px; height: 36px;background-position: -341px -91px;position: absolute;top: 29px;left: 174px;cursor: pointer;}
			.next{width: 31px;height: 21px;background-position: -154px -36px;top: 39px; left: 237px;cursor: pointer;position: absolute;}
			.geci{width: 30px;height: 54px;background-position: -465px 38px;top: 36px; left: 313px;cursor: pointer;position: absolute;}
		</style>
		
		<div class="cover">
			<img id="coverImage" src="images/c1.jpg" width="80px" height="80px" class=""/>
			
			<a id="prev" class="plicon prev"></a>
			<!-- 播放 -->
			<div id="playControl">
				<a id="playBtn" class="plicon bofang"></a>
				<a id="pauseBtn" class="plicon zanting vs"></a>
			</div>
			<a id="next" class="plicon next"></a>
			<a id="geci" class="plicon geci"></a>
		</div>
		
		
		
			<!-- 歌词&播放列表 -->
			<div class="box">
				
				<!-- 歌词 -->
				<!--<div id="lrcPanel" class="lrc">
					<div id="title" class="title">正在加载</div>
					<div class="wrap">
						<div class="content" id="lrc">
							<img src="images/loading.gif" width="16px" height="11px"/>
						</div>
					</div>
				</div>-->
				
				<!-- 播放列表 -->
				<div id="playList" class="play-list vs" style="overflow: auto;"></div>
	
				<!-- 显示播放列表按钮 -->
				<div id="playListBtn1" class="play-list-btn">
					<span></span>
					<span></span>
					<span></span>
				</div>
				
			</div>

	</div>
	
	
	<!--
    	作者：yc122166131@vip.qq.com
    	时间：2016-04-10
    	描述：全屏的歌词遮罩层overlayPlay
    -->
	<div class="overlayPlay vs">
	<!-- 歌词 -->
			<div id="lrcPanel" class="lrc">
				<img id="coverImage" src="images/c1.jpg" width="180px" height="180px" style="margin: 50px auto 10px;"/>
				<div id="title" class="title">正在加载</div>
				<div class="wrap">
					<div class="content" id="lrc">
						<img src="images/loading.gif" width="16px" height="11px"/>
					</div>
				</div>
			</div>
			<input type="button" id="geci_Close" value="关闭按钮 " style="position: absolute;top: 0;right: 0;"/>	<!-- 播放按钮 -->
	</div>
	
	  <!--<input type="button" id="geci_Closecc" value="dianjisfsfs "/>	<!-- 播放按钮 -->-->
	
	<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="js/soundmanager2-jsmin.js"></script>
	<script type="text/javascript">
	
		var playlist2 = [];
		//播放列表
		var playlist1 = [
		{ "mp3": "s2.mp3",  "coverImage": "images/c3.jpg"}
		]
		
		$(function(){
			$(".overlayPlay").css("height","0%");
			$(".overlayPlay .lrc").css({"height":"0%","overflow":"hidden"});
			
			var playList_Flag = true;
			$(".singers").find("li").click(function(){
//				playlist2.push({"songName": "恋人心", "singerName": "魏新雨", "mp3": "s2.mp3", "lrc": "s2.lrc", "coverImage": "images/c3.jpg"});
//				playlist2.push({"songName": "他比你", "singerName": "胡夏", "mp3": "s1.mp3", "lrc": "s1.lrc", "coverImage": "images/c3.jpg"});
				var  _lrc = $(this).children().attr("alt");
				var singerInfo = $(this).children().attr("title");
				var _Imgsrc = $(this).children().attr("src");
				var _Audiosrc = $(this).children("input").val();
				var _songName = singerInfo.split("-")[0];
				var _singerName =  singerInfo.split("-")[1];
				//alert(_Audiosrc);
				playlist2.push({"songName": _songName, "singerName": _singerName, "mp3": _Audiosrc, "lrc": _lrc, "coverImage": _Imgsrc});
				
				//下面是初始化要在歌曲面板上显示的歌曲
				playlist1 = playlist2;
				var html = [];
				for(var i = 0, len = playlist2.length; i < len; i++){
					html[i] = '<li><span>'+ (i + 1) +'.</span>'+ playlist2[i].songName +' - '+ playlist2[i].singerName +'</li>';
				}
				$('#playList').html('<ul>' +html.join(' ')+ '</ul>');
				
				
				//当点击右侧头像时 立马进行播放
				$('#playList ul li:last').trigger("click");   //模拟点击事件 总是点击#playList面板的最后一首歌曲
		
				//歌曲面板的出现方式
				if(playList_Flag){
					$("#playList").toggle();
					$("#playList").css("visibility","visible");
					playList_Flag = false;
				}
				
				
				$("#coverImage").removeClass("pic_rotate").addClass("pic_rotate");
			    $("#coverImage").addClass("resetRotate");
			 	
			});
		});
		
		//弹出全屏歌词
		var timer //用来每秒监听和外面的图片进行同步
		$('#geci').click(function(){
			
			$(".overlayPlay").css("visibility","visible");
			
			$(".overlayPlay").css("height","100%");
			$(".overlayPlay .lrc").css({"height":"100%"});
			
			timer = setInterval(function(){
				var _src = $(".cover #coverImage").attr("src");
				$(".overlayPlay #coverImage").attr("src",_src);
			},1000);
			
			
		});
		
		$('#geci_Close').click(function(){
			clearInterval(timer);
			$(".overlayPlay").css("height","0%");
			$(".overlayPlay .lrc").css({"height":"0%","overflow":"hidden"});
			
		});
		
		//(下一首)
		//获取正在播放的音乐
		$('#next').click(function(){
			//alert($("#playList").find("li").length); //3
			var _liLen = $("#playList").find("li").length;
			$("#playList").find("li").each(function(){
				//获取正在播放的音乐(cr是 高亮的样式，通过它我们能获取到当前正在播放的音乐)
				if($(this).hasClass("cr")){
					//alert($(this).index()); //2
					var _next = $(this).index()+1;
					//alert(_next);
					if(_next < _liLen){
						$('#playList ul li').eq(_next).trigger("click");
						retrun;
					}else{
						$('#playList ul li:first').trigger("click");
					}
					
				}
			})
			
			
		});
		
		
		//(前一首)
		$('#prev').click(function(){
			//alert($("#playList").find("li").length); //3
			$("#playList").find("li").each(function(){
				//获取正在播放的音乐(cr是 高亮的样式，通过它我们能获取到当前正在播放的音乐)
				if($(this).hasClass("cr")){
					//alert($(this).index()); //2
					var _prev = $(this).index()-1;
					//alert(_next);
					if(_prev < 0){
						$('#playList ul li:last').trigger("click");
						retrun;
					}else{
						$('#playList ul li').eq(_prev).trigger("click");
					}
					
				}
			})
			
			
		});
		
		
		$('#playListBtn1').click(function(){
			
			$("#playList").toggle();
		});
		
		
		$("#playBtn").on("click",function(){
			
			
			$("#coverImage").removeClass("pic_rotate_pause").addClass("pic_rotate_run");
		});
		
		$("#pauseBtn").on("click",function(){
			
			$("#coverImage").removeClass("pic_rotate_run").addClass("pic_rotate_pause");;
		});
		
		$(".singers ul li").hover(function(){
			$(this).find("span").addClass("spec").parent().siblings().removeClass("spec");
			$(this).find("i").css({top: "49px",left: "74px","opacity":1});
			$(this).css("transform","scale(1.2)");
		},function(){
			$(this).find("span").removeClass("spec");
			$(this).find("i").css({top: "100px",left: "74px","opacity":0});
			$(this).css("transform","scale(1)");
		});
		
	</script>
	<script type="text/javascript" src="js/index.min.js"></script>
</body>
</html>