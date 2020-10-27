package ${package}.mapper;

import java.util.List;
import java.util.Map;
import ${entityPackage}.${entityName};

/**
* @Description:
* @author ${author}
* @date ${now}
*/
public interface ${entityName}DAO {

    /**
    * 查询列表
    */
    List<${entityName}DO> query(${entityName}Query ${instanceName}Query);

    /**
    * 查询列表--总数
    */
    Integer queryCount(${entityName}Query ${instanceName}Query);

    /**
    * 查询 -根据主键查询
    */
    ${entityName}DO queryById(@Param("id") Long id);

    /**
    * 删除 -根据主键删除
    */
    Integer delete(@Param("id") Long id);

    /**
    * 修改 -根据主键修改
    */
    Integer update(${entityName}DO ${instanceName}DO);

    /**
    * 新增 -主键递增
    */
    Integer insert(${entityName}DO ${instanceName}DO);


}