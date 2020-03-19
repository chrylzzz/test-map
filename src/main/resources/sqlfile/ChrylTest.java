package com.team.chryl;

import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Splitter;
import com.google.common.collect.*;
import com.google.common.primitives.Ints;
import org.apache.commons.lang3.time.DateFormatUtils;

import java.util.*;

/**
 * GOOGLE.GUAVA
 * <p>
 * Created By Chryl on 2020/03/14 0014.
 */
public class ChrylTest {

    private static final CharMatcher CHAR_MATCHER_DIGIT = CharMatcher.DIGIT;
    private static final CharMatcher CHAR_MATCHER_ANY = CharMatcher.ANY;

    //连接器
    private static final Joiner JOINER = Joiner
            .on(",")//使用,分割
//            .useForNull("aaa")//使用aaa替换null
            .skipNulls();//跳过null
    //分割器
    private static final Splitter SPLITTER = Splitter.on(",")
            .trimResults()//分割规则
            .omitEmptyStrings();

    public static void main(String args[]) {
        Date date = new Date();
        System.out.println(DateFormatUtils.format(date, "yyyyMMdd"));


        String join = JOINER.join(Lists.newArrayList("a", null, "b"));
        String join2 = JOINER.join(Lists.newArrayList(Arrays.asList("1", "2", "4", "6")));

        System.out.println(join);
        System.out.println(join2);

        for (String temp : SPLITTER.split("a,,,..,,b     ,,")) {
            System.out.println(temp);
        }

        //保留匹配的字符,其他的剔除
        System.out.println(CHAR_MATCHER_DIGIT.retainFrom("abc2def134f!`"));
        //移除统配字符
        System.out.println(CHAR_MATCHER_DIGIT.removeFrom("yes, 2o8h .se-e 241!`"));
        System.out.println(CHAR_MATCHER_ANY.retainFrom("ye~s, 2o8h .se-e 241!`"));//???
        System.out.println(Ints.asList(1, 3, 4, 76));//集合转换
        System.out.println(Arrays.asList(1, 2, 3, 4));
        //字符串链接
        System.out.println(Ints.join(",", 12, 3, 6, 7));

        int[] concatArr = Ints.concat(new int[]{1, 2}, new int[]{5, 7});
        System.out.println(concatArr.length);//数组合并
        System.out.println(Ints.max(concatArr));//最大
        System.out.println(Ints.min(concatArr));//最小

        //Ints.toArray()//转为数组

//        Multiset//无序,可重复
        Multiset<String> multiset2 = HashMultiset.create();
        multiset2.setCount("z", 7);//设置数量
        System.out.println(multiset2.count("z"));
        Multiset<String> multiset = HashMultiset.create();
        multiset.add("a");
        multiset.add("a");
        multiset.add("b");
        multiset.add("c");
        multiset.add("c");
        System.out.println(multiset.size());
        System.out.println(multiset.count("a"));//包含的字符数量
        Set<String> strings = multiset.elementSet();//去重
        Iterator<String> iterator = multiset.iterator();
        while (iterator.hasNext()) {
            String next = iterator.next();
            System.out.println(next);
        }
//        Multimap//
        Multimap<String, String> multimap = HashMultimap.create();
        multimap.put("a", "1");
//        multimap.put("a", "1");
        multimap.put("b", "1");
        multimap.put("c", "1");
//        multimap.put("c", "1");
        System.out.println(multimap);
        Multimap<String, String> arrListMulMap = ArrayListMultimap.create();//一个key对多个val
        arrListMulMap.put("a", "1");
        arrListMulMap.put("a", "2");
        arrListMulMap.put("a", "3");
        System.out.println(arrListMulMap);
        //双向BiMap
        BiMap<String, String> biMap = HashBiMap.create();
        biMap.put("name", "cmcc");
//        biMap.put("zzz", "cmcc");//直接覆盖:Exception in thread "main" java.lang.IllegalArgumentException: value already present: cmcc
        biMap.forcePut("zzz", "cmcc");//强制覆盖
        System.out.println(biMap.get("zzz"));//key得到val
        System.out.println(biMap.inverse().get("cmcc"));//val得到key
        //关系:forwardmap,backwardmap
//        biMap.inverse()!=biMap;
//        biMap.inverse().inverse()==biMap;

        /////////////////////////////////////////////////////////////////////////////////////////////////////
        show("chryl", 1, 2, 3, 4);

//        show(new double[]{1, 2, 34});

    }

    public static void show(String str, double... numbers) {
        if (numbers.length == 0) {

        } else {
            for (double number : numbers) {
                System.out.println(number);
            }
            System.out.println(str);
        }


    }


}
