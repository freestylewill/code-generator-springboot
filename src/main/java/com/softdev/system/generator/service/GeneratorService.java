package com.softdev.system.generator.service;

import freemarker.template.TemplateException;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Map;

/**
 * GeneratorService
 * @author zhengkai.blog.csdn.net
 */
public interface GeneratorService {

    Map<String,String> getResultByParams(Map<String, Object> params) throws IOException, TemplateException;

}
