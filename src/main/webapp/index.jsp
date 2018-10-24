<html>
<meta charset="UTF-8">
<body>
<h2>Hello World!</h2>

springMVC上传文件
<form name="form1" action="/manage/product/upload.do" method="post" enctype="multipart/form-data">
    <input type="file" name="upload_file"/>
    <input type="submit" value="springmvc上传"/>
</form>


富文本上传文件
<form name="form1" action="/manage/product/rich_text_img_upload.do" method="post" enctype="multipart/form-data">
    <input type="file" name="upload_file"/>
    <input type="submit" value="富文本上传"/>
</form>

</body>
</html>
