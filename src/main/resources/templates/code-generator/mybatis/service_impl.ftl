import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Resource
	private ${classInfo.className}Dao ${classInfo.className?uncap_first}Dao;


	@Override
	public ReturnT<String> insert(${classInfo.className} ${classInfo.className?uncap_first}) {

		// valid
		if (${classInfo.className?uncap_first} == null) {
			return ${returnUtil}.ERROR("必要参数缺失");
        }

		${classInfo.className?uncap_first}Dao.insert(${classInfo.className?uncap_first});
        return ${returnUtil}.SUCCESS;
	}
	
	@Override
	public ReturnT<String> insertSelective(${classInfo.className} ${classInfo.className?uncap_first}) {

		// valid
		if (${classInfo.className?uncap_first} == null) {
			return ${returnUtil}.ERROR("必要参数缺失");
        }

		${classInfo.className?uncap_first}Dao.insertSelective(${classInfo.className?uncap_first});
        return ${returnUtil}.SUCCESS;
	}

	@Override
	public ReturnT<String> deleteByPrimaryKey(int id) {
		int ret = ${classInfo.className?uncap_first}Dao.deleteByPrimaryKey(id);
		return ret>0?${returnUtil}.SUCCESS():${returnUtil}.ERROR();
	}


	@Override
	public ReturnT<String> updateByPrimaryKey(${classInfo.className} ${classInfo.className?uncap_first}) {
		int ret = ${classInfo.className?uncap_first}Dao.updateByPrimaryKey(${classInfo.className?uncap_first});
		return ret>0?${returnUtil}.SUCCESS():${returnUtil}.ERROR();
	}
	
	@Override
	public ReturnT<String> updateByPrimaryKeySelective(${classInfo.className} ${classInfo.className?uncap_first}) {
		int ret = ${classInfo.className?uncap_first}Dao.updateByPrimaryKeySelective(${classInfo.className?uncap_first});
		return ret>0?${returnUtil}.SUCCESS():${returnUtil}.ERROR();
	}

	@Override
	public ${classInfo.className} selectByPrimaryKey(int id) {
		return ${classInfo.className?uncap_first}Dao.selectByPrimaryKey(id);
	}

}
