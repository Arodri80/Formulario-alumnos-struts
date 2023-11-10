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

    <h1>Resumen de factura: </h1>

    <table>
        <tr>
            <td><b>Asunto:</b></td>
            <td><s:property value="invoiceBean.subject" /></td>
        </tr>
        <tr>
            <td><b>Fecha Desde:</b></td>
            <td><s:property value="invoiceBean.dateFrom" /></td>
        </tr>
        <tr>
            <td><b>Fecha Hasta:</b></td>
            <td><s:property value="invoiceBean.dateTo" /></td>
        </tr>
        <tr>
            <td><b>Importe Bruto con IVA%:</b></td>
            <td><s:property value="invoiceBean.importeBrutoConIVA"/></td>
        </tr>
    </table>


</body>
</html>