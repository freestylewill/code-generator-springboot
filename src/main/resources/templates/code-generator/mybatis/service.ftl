import java.util.Map;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public interface ${classInfo.className}Service {

    /**
    * 新增
    */
    ReturnT<String> insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 新增
    */
    ReturnT<String> insertSelective(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    ReturnT<String> deleteByPrimaryKey(int id);

    /**
    * 更新
    */
    ReturnT<String> updateByPrimaryKey(${classInfo.className} ${classInfo.className?uncap_first});
	
	/**
    * 更新
    */
    ReturnT<String> updateByPrimaryKeySelective(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 根据主键 id 查询
    */
    ${classInfo.className} selectByPrimaryKey(int id);

}
