package com.mmall.util;

import ch.qos.logback.core.util.FileUtil;
import org.springframework.core.io.support.PropertiesLoaderUtils;

import java.security.MessageDigest;

/**
 * MD5加密工具类
 * Created by huankai on 2018/10/20.
 */
public class MD5Util {
    private static final String hexDigits[]={"0","1","2","3","4","5","6","7","8","9",
            "a","b","c","d","e","f"};
    private static String byteArrayToHexString(byte[] b){
        StringBuffer sb = new StringBuffer();
        for (int i=0;i<b.length;i++){
            sb.append(byteToHexString(b[i]));
        }
        return sb.toString();
    }
    private static String byteToHexString(byte b){
        int n = b;
        if(n<0){
            n+=256;
        }
        int d1 = n/16;
        int d2 = n%16;
        return hexDigits[d1]+hexDigits[d2];
    }

    /**
     * 返回大写的MD5
     * @param origin 需要加密的源字符串
     * @param charsetname 加密使用的字符集
     * @return
     */
    private static String MD5Encode(String origin,String charsetname){
        String resultString = null;
        try {
            resultString = new String(origin);
            MessageDigest md = MessageDigest.getInstance("MD5");
            if (charsetname==null||"".equals(charsetname)){
                resultString=byteArrayToHexString(md.digest(resultString.getBytes()));
            }else {
                resultString=byteArrayToHexString(md.digest(resultString.getBytes(charsetname)));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return resultString.toUpperCase();
    }

    public static String MD5EncodeUtf8(String origin){
        origin = origin + PropertiesUtil.getProperty("password.salt");
        return MD5Encode(origin,"utf-8");
    }
}
