<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="messages" var="msg"/>

<footer class="footer" style="display: none;">
    <div class="container-fluid">
        <div class="logofooter col-md-3 col-lg-3">
            <img id="companyImgFooter" src="">
        </div>
        <div class="contenido_zonafooter col-md-9 col-lg-9 pull-right">
    
            <p id="companyAddress" class="text-right"></p>
            <p id="yearspan" class="text-right"></p>
            <div id="companyRedSoc">  
                <a class="companyRedSocLink linkedin pull-right" href="" target="_blank"></a>
                <a class="companyRedSocLink facebook pull-right" href="" target="_blank"></a>
                <span class="pull-right" style="display: inline-block;margin: 10px 10px 0px 0px;">Siguenos en: </span>
            </div>
        </div>
    </div>
</footer>

<script type="text/javascript">
    $(function() {
        $('#yearspan').text('<fmt:message key="label.copyright1" bundle="${msg}"/>' + ((new Date()).getFullYear()) + ' <fmt:message key="label.copyright2" bundle="${msg}"/>');
    });
</script>