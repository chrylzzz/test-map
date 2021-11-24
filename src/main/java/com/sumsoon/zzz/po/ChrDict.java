package com.sumsoon.zzz.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Chr.yl on 2021/11/24.
 *
 * @author Chr.yl
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ChrDict implements Serializable {

    private String dictId;
    private String dictCode;
    private String dictName;
    private String parentCode;

    List<ChrDict> chrDictList;


}
