<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset=EUC-KR>
    <title></title>
    <link href="Css/cssJMBae.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .hidden{
            display: none;
        }
        .bold{
            font-weight: bold;
        }
        .DivCss{
            background-color: #FFFFCC; border: thin dotted #000000; padding: 2px; margin: 0px; width: 200px;
        }
    </style>
    
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var toggleStyleSwitcher = function () {
                $('#div1').addClass('bold');
            };
            $('#txt1').addClass('hidden');
 
            $('#Button1').click(function (event) {
                $('#txt1').toggleClass('hidden');
            });
 
            $('div:contains("���� ��ġ��� ����")').click(toggleStyleSwitcher);
        });
    </script>
</head>
<body>
    <div id="div1">
    	<input type= button id="Button1" value='��ġ��� ����' align="bottom" />
    </div>
    <div id="txt1"  class="DivCss">�׽�Ʈ�Դϴ�.
 
</div>
</body>
</html>
 