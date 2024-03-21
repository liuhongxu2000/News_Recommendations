<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
	<LINK href="images/default.css" type=text/css rel=stylesheet>
	<LINK href="images/css.css" type=text/css rel=stylesheet>
	<META http-equiv=Content-Type content="text/html; charset=gb2312">
	<style>
		.slideshow-container {
			max-width: 100%;
			position: relative;
			margin: auto;
		}

		.mySlides {
			display: none;
		}

		.mySlides img {
			width: 100%;
			height: auto;
		}
	</style>
	<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
</HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>

<TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
	<TBODY>
	<TR>
		<TD vAlign=top width="37%" height=200>
			<!--*******************************幻灯开始*******************************-->
			<div class="slideshow-container">
				<div class="mySlides">
					<img src="images/1.jpg" alt="Image 1">
				</div>
				<div class="mySlides">
					<img src="images/2.jpg" alt="Image 2">
				</div>
				<div class="mySlides">
					<img src="images/3.jpg" alt="Image 3">
				</div>
			</div>

			<script>
				var slideIndex = 0;
				showSlides();

				function showSlides() {
					var i;
					var slides = document.getElementsByClassName("mySlides");
					for (i = 0; i < slides.length; i++) {
						slides[i].style.display = "none";
					}
					slideIndex++;
					if (slideIndex > slides.length) {slideIndex = 1}
					slides[slideIndex-1].style.display = "block";
					setTimeout(showSlides, 2000); // 切换时间为 2 秒
				}
			</script>

			<!--*******************************幻灯结束*******************************-->
		</TD>
		<TD class=Side vAlign=top align=left width="37%" height=200>
			<!--*******************************体育资讯开始*******************************-->
			<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TBODY>
				<TR>
					<TD class=head id=tb1_bt1 onmouseover=tb_xs(1,2,1) width="100%" height="30">
						<SPAN class=TAG>最新新闻</SPAN>
					</TD>

				</TR>
				<TR>
					<TD class=middle  align="left" colspan="2">
						<!--*******************************体育新闻**********************************-->
						<TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
							<TBODY>

							<%if(!newsList.isEmpty()){
								for(int news11=0;news11<newsList.size();news11++){
									List newsList2=(List)newsList.get(news11);
							%>
							<TR>
								<TD align="left">
									<A href=<%=basePath %>newsinfo.jsp?id=<%=newsList2.get(0).toString()%> >
										<%=newsList2.get(1).toString().length()>17?newsList2.get(1).toString().substring(0,17):newsList2.get(1).toString() %></A><BR>
								</TD>
								<TD align="right">
									<%=newsList2.get(2).toString().substring(0,10) %><BR>

								</TD>
							</TR>
							<%}} %>

							</TBODY>
						</TABLE>
					</TD>
				</TR>
				</TBODY>
			</TABLE>
			<!--*******************************体育新闻结束*******************************-->
		</TD>
		<TD class=Side vAlign=top align=right width="25%">
			<!--*******************************滚动公告开始*******************************-->
			<TABLE width="100%" height="240" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				<TBODY>
				<TR>
					<TD class=head>
                        <SPAN class=TAG>
                            <P>站内公告</P>
                        </SPAN>
					</TD>
				</TR>
				<TR>
					<TD class=middle align=left>
						<MARQUEE onmouseover=if(document.all!=null){this.stop()} onmouseout=if(document.all!=null){this.start()} scrollAmount=1 scrollDelay=1 direction=up height=180>
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TBODY>
								<%if(!affList.isEmpty()){
									for(int aff=0;aff<affList.size();aff++){
										List affList2=(List)affList.get(aff);
								%>
								<TR>
									<TD width="100%">
										<%=affList2.get(1).toString() %>---<%=affList2.get(2).toString() %><BR>
									</TD>
								</TR>
								<%
										}
									}
								%>

								</TBODY>
							</TABLE>
						</MARQUEE>
					</TD>
				</TR>
				</TBODY>
				<!--*******************************滚动公告结束*******************************-->
			</TABLE>
		</TD>
	</TR>
	</TBODY>
</TABLE>
<!--*******************************2个信息栏目开始*******************************-->
<TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
	<TBODY>
	<TR>
		<TD vAlign=top width="49%" height=200>
			<!--*******************************幻灯开始*******************************-->
			<TABLE  class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TBODY>
				<TR>
					<TD class=head id=tb1_bt1 onmouseover=tb_xs(1,2,1) width="100%" height="30">
						<SPAN class=TAG>热点新闻</SPAN>
					</TD>

				</TR>
				<TR>
					<TD class=middle  align="left" colspan="2">
						<!--*******************************新闻新闻**********************************-->
						<TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
							<TBODY>
							<TR>
								<TD align="center">新闻标题</TD>
								<TD align="center">新闻栏目<BR>
								<TD align="center">发布时间<BR>
								<TD align="center">发布人<BR>
								<TD align="center">点击率<BR>
							</TR>
							<%List hlist=news.get10HotNews();

								if(!hlist.isEmpty()){
									for(int news11=0;news11<hlist.size();news11++){
										List newsList2=(List)hlist.get(news11);
							%>
							<TR>
								<TD align="left">
									<A href=<%=basePath %>newsinfo.jsp?id=<%=newsList2.get(0).toString()%> >
										<%=newsList2.get(1).toString().length()>17?newsList2.get(1).toString().substring(0,17):newsList2.get(1).toString() %></A><BR>
								</TD>
								<TD align="center"><%=newsList2.get(2).toString() %><BR>
								<TD align="center"><%=newsList2.get(4).toString().substring(0,10) %><BR>
								<TD align="center"><%=newsList2.get(5).toString() %><BR>
								<TD align="center"><%=newsList2.get(6).toString() %><BR>
							</TR>
							<%}} %>


							</TBODY>
						</TABLE>
					</TD>
				</TR>
				</TBODY>
			</TABLE>
			<!--*******************************幻灯结束*******************************-->
		</TD>
		<TD class=Side vAlign=top align=left width="49%" height=200>
			<!--*******************************新闻新闻开始*******************************-->
			<TABLE  class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TBODY>
				<TR>
					<TD class=head id=tb1_bt1 onmouseover=tb_xs(1,2,1) width="100%" height="30">
						<SPAN class=TAG>新闻列表</SPAN>
					</TD>

				</TR>
				<TR>
					<TD class=middle  align="left" colspan="2">
						<!--*******************************新闻新闻**********************************-->
						<TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
							<TBODY>

							<TR>
								<TD align="center">新闻标题</TD>
								<TD align="center">新闻栏目<BR>
								<TD align="center">发布时间<BR>
								<TD align="center">发布人<BR>
								<TD align="center">点击率<BR>
							</TR>
							<%List pslist=news.getaNews();
								if(!pslist.isEmpty()){
									for(int news11=0;news11<pslist.size();news11++){
										List newsList2=(List)pslist.get(news11);
							%>
							<TR>
								<TD align="left">
									<A href=<%=basePath %>newsinfo.jsp?id=<%=newsList2.get(0).toString()%> >
										<%=newsList2.get(1).toString().length()>17?newsList2.get(1).toString().substring(0,17):newsList2.get(1).toString() %></A><BR>
								</TD>
								<TD align="center"><%=newsList2.get(2).toString() %><BR>
								<TD align="center"><%=newsList2.get(4).toString().substring(0,10) %><BR>
								<TD align="center"><%=newsList2.get(5).toString() %><BR>
								<TD align="center"><%=newsList2.get(6).toString() %><BR>
							</TR>
							<%}} %>

							</TBODY>
						</TABLE>
					</TD>
				</TR>
				</TBODY>
			</TABLE>
			<!--*******************************新闻新闻结束*******************************-->
		</TD>

	</TR>
	</TBODY>
</TABLE>

<%@ include file="iframe/foot.jsp"%>
