package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.demo.actions.beans.InvoiceBean;


public class InvoiceAction extends ActionSupport  {

    InvoiceBean invoiceBean;

    @Override

    public String execute() {
        // Calcula el importe bruto con el 21% de IVA
        if (invoiceBean != null) {
            Double importeBruto = invoiceBean.getImporteBruto();
            if (importeBruto != null) {
                Double importeBrutoConIVA = importeBruto * 1.21;
                invoiceBean.setImporteBrutoConIVA(importeBrutoConIVA);
            }
        }
        return SUCCESS;
    }

    public InvoiceBean getInvoiceBean() {
        return invoiceBean;
    }

    public void setInvoiceBean(InvoiceBean invoiceBean) {
        this.invoiceBean = invoiceBean;
    }

    @Override
    public void validate() {
        if (invoiceBean.getSubject().isEmpty()) {
            addFieldError("invoiceBean.subject", "El concepto es obligatorio.");
        }
        if (invoiceBean.getDateFrom() == null) {
            addFieldError("invoiceBean.dateFrom", "La fecha desde es obligatorio.");
        }
        if (invoiceBean.getDateTo() == null) {
            addFieldError("invoiceBean.dateTo", "La fecha hasta es obligatorio.");
        }
        if (invoiceBean.getImporteBruto() == null) {
            addFieldError("invoiceBean.importeBruto", "El importe bruto es obligatorio.");
        }


    }




}
