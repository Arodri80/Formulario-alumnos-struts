<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>



<s:form theme="simple" id="itemAdd" name="itemAdd" action="invoice" method="post" validate="true">
  <h1><s:text name="form.tittle.message"/></h1>
  <table>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "invoiceBean.nombre" />
        <s:text name="form.nombre.message"/>
        <s:textfield id="nombre" name="invoiceBean.nombre"/>
      </td>
    </tr>
     <tr>
          <td class="evenRow">
            <s:fielderror fieldName = "invoiceBean.apellidos" />
            <s:text name="form.apellidos.message"/>
            <s:textfield id="apellidos" name="invoiceBean.apellidos"/>
          </td>
        </tr>
   <tr>
        <td class="evenRow">
          <s:fielderror fieldName = "invoiceBean.dni" />
          <s:text name="form.dni.message"/>
          <s:textfield id="dni" name="invoiceBean.dni"/>
        </td>
      </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "invoiceBean.nace" />
        <s:text name="form.nace.message"/>
        <sx:datetimepicker id="nace" name="invoiceBean.nace"/>
      </td>
    </tr>
  <tr>
  <td class="evenRow">
        <s:submit align="left" value="Enviar"/>
    </td>
  </tr>

  <!-- Botón para volver al menú -->
      <s:a href="menu.jsp">Volver al Menú</s:a>
  </table>
</s:form>


</body>
</html>
