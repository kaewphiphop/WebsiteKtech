<%@ Page Title="" Language="C#" MasterPageFile="~/KtechMaster.Master" AutoEventWireup="true" CodeBehind="building.aspx.cs" Inherits="WebsiteKtech.Pages.fancybox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<!-- Add jQuery library -->
	<script type="text/javascript" src="../fancybox/lib/jquery-1.10.1.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="../fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="../fancybox/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="../fancybox/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="../fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="../fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="../fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="../fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="../fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            /*
            *  Simple image gallery. Uses default settings
            */

            $('.fancybox').fancybox();

            

        });
	</script>
    <style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}

	#page
	{
	    padding:20px;
	}
	</style>
    <div id="page">
    <center><img src="../fancybox/images/title_building.png" /></center><br />
    <center>   
    <a class="fancybox" href="../fancybox/images/1.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_1.jpg" alt="" /></a>
    <a class="fancybox" href="../fancybox/images/2.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_2.jpg" alt="" /></a>
    <a class="fancybox" href="../fancybox/images/3.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_3.jpg" alt="" /></a>
    <a class="fancybox" href="../fancybox/images/4.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_4.jpg" alt="" /></a>
    <a class="fancybox" href="../fancybox/images/5.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_5.jpg" alt="" /></a></center><br />
    <center>
    <a class="fancybox" href="../fancybox/images/6.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_6.jpg" alt="" /></a>
    <a class="fancybox" href="../fancybox/images/7.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_7.jpg" alt="" /></a>
    <a class="fancybox" href="../fancybox/images/8.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_8.jpg" alt="" /></a>
    <a class="fancybox" href="../fancybox/images/9.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_9.jpg" alt="" /></a>
    <a class="fancybox" href="../fancybox/images/10.jpg" data-fancybox-group="gallery" title=""><img src="../fancybox/images/_10.jpg" alt="" /></a>
    </center>
     </div>

</asp:Content>
