package ${packageName}.mapper;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * @description ${classInfo.classComment}Dao
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Mapper
@Repository
public interface ${classInfo.className}Dao {

    @select("select * from ${classInfo.tableName} where ${classInfo.tableName}_id=井{id}")
    public ${classInfo.className} selectByPrimaryKey(Integer id);

    @Options(useGeneratedKeys=true,keyProperty="${classInfo.className?uncap_first}Id")
    @Insert("insert into ${classInfo.tableName}"
            "(<#list classInfo.fieldList as fieldItem >${fieldItem.columnName}<#if fieldItem_has_next>,</#if></#list>)"
            "values(<#list classInfo.fieldList as fieldItem >${fieldItem.fieldName}<#if fieldItem_has_next>,</#if>)</#list>")
    public Integer insert(${classInfo.className} ${classInfo.className?uncap_first});
	
	
	@Options(useGeneratedKeys=true,keyProperty="${classInfo.className?uncap_first}Id")
    @Insert("insert into ${classInfo.tableName}"
            "(<#list classInfo.fieldList as fieldItem >${fieldItem.columnName}<#if fieldItem_has_next>,</#if></#list>)"
            "values(<#list classInfo.fieldList as fieldItem >${fieldItem.fieldName}<#if fieldItem_has_next>,</#if>)</#list>")
    public Integer insertSelective(${classInfo.className} ${classInfo.className?uncap_first});

    @delete(value = "deleteByPrimaryKey from ${classInfo.tableName} where ${classInfo.tableName}_id=井{${classInfo.className?uncap_first}Id}")
    boolean deleteByPrimaryKey(Integer id);

    @update(value = "updateByPrimaryKey ${classInfo.tableName} set "
    <#list classInfo.fieldList as fieldItem >
        <#if fieldItem.columnName != "id">+" ${fieldItem.columnName}=井{${fieldItem.fieldName}}<#if fieldItem_has_next>,</#if>"</#if>
    </#list>
        +" where ${classInfo.tableName}_id=井{${classInfo.className?uncap_first}Id} ")
    boolean updateByPrimaryKey(${classInfo.className} ${classInfo.className?uncap_first});
	
	@update(value = "updateByPrimaryKey ${classInfo.tableName} set "
    <#list classInfo.fieldList as fieldItem >
        <#if fieldItem.columnName != "id">+" ${fieldItem.columnName}=井{${fieldItem.fieldName}}<#if fieldItem_has_next>,</#if>"</#if>
    </#list>
        +" where ${classInfo.tableName}_id=井{${classInfo.className?uncap_first}Id} ")
    boolean updateByPrimaryKeySelective(${classInfo.className} ${classInfo.className?uncap_first});

}