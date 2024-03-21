package com.spring.springboot.hComicTag;

import com.spring.springboot.hComicTag.addHComicTagRequestPojo;
import com.spring.springboot.response.responseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class hComicTagServiceImpl implements hComicTagService
{
    @Autowired
    hComicTagMapper hComicTagMapper;

    @Override
    public List<hComicTag> getHComicTagList()
    {
        return hComicTagMapper.getHComicList();
    }

    @Override
    public responseCode addHComicTag(addHComicTagRequestPojo addHComicTagRequest)
    {
        responseCode code = new responseCode();
        String id = hComicTagMapper.getHVideoTagByVideoIdAndTagId(addHComicTagRequest); //获取一次看是否有数据
        if(id == null) //无数据则返回正常状态码并添加数据
        {
            hComicTagMapper.addHVideoTag(addHComicTagRequest);
            code.setCode(200);
        }
        else //有数据则返回错误状态码
        {
            code.setCode(201);
        }
        return code;
    }
}
