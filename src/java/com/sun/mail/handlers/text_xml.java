package com.sun.mail.handlers;

import javax.activation.ActivationDataFlavor;

public class text_xml extends text_plain {
    private static ActivationDataFlavor myDF = new ActivationDataFlavor(String.class, "text/xml", "XML String");

    /* Access modifiers changed, original: protected */
    public ActivationDataFlavor getDF() {
        return myDF;
    }
}
