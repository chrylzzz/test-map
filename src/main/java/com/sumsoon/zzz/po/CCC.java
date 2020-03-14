package com.sumsoon.zzz.po;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CCC implements Serializable {
    private Integer testId;

    private String testName;

    private static final long serialVersionUID = 1L;

    public Integer getTestId() {
        return testId;
    }

    public void setTestId(Integer testId) {
        this.testId = testId;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName == null ? null : testName.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", testId=").append(testId);
        sb.append(", testName=").append(testName);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

    public static void main(String[] args) throws ParseException {
        String d1 = "2019-12-12";
        SimpleDateFormat s1 = new SimpleDateFormat("yyyy-mm-dd");
        SimpleDateFormat s2 = new SimpleDateFormat("yyyyMMdd");
        Date parse = s1.parse(d1);
        String format = s2.format(parse);
        System.out.println(parse);
        System.out.println(format);
    }
}