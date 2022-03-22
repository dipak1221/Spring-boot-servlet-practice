
package com.technical.blog.entities;

public class Message {
    private String context;
    private String type;
    private String cssClass;

    public Message(String context, String type, String cssClass) {
        this.context = context;
        this.type = type;
        this.cssClass = cssClass;
    }
    
//    Getter and setter

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCssClass() {
        return cssClass;
    }

    public void setCssClass(String cssClass) {
        this.cssClass = cssClass;
    }
    
    
}
