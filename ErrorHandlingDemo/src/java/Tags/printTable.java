package Tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class printTable extends TagSupport {

    int number;
    String colour;

    public void setNumber(int n) {
        number = n;
    }
    public void setColour(String c){colour=c;}

    @Override
    public int doStartTag() throws JspException {

        JspWriter out = pageContext.getOut();
        try {
            out.println("<div style='color:"+colour+" ; border:2px solid green'>");
            for (int i = 1; i <= 10; i++) {
                out.println(number + " X " + i + " = " + (i * number) + "<br>");
            }

            out.println("</div>");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }

}
