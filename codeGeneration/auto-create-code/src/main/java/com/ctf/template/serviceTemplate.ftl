package ${package}.service;

import java.util.Map;
import ${package}.entity.${entityName};

/**
* @Description:
* @author ${author}
* @date ${now}
*/
public interface ${entityName}Service {

    /**
    * @Description: 列表查询
    */
    public List<${entityName}DTO> query(${entityName}Query ${instanceName}Query);

    /**
    * @Description: 通过id查询
    */
    ${entityName}DO queryById(Long id);

    /**
    * @Description: 修改
    */
    Integer update(${entityName}DTO ${instanceName}DTO);

    /**
    * @Description: 根据id删除
    */
    Integer delete(Long id);

    /**
    * @Description: 新增
    */
    Integer save(${entityName}DTO ${instanceName}DTO);

    /**
    * @Description:不分页查询列表
    */
    List<${entityName}DTO> queryNoPage(${entityName}Query query, Long timeOut);

    /**
    *@Description: 不分页查询列表 默认超时时间30s
    */
    List<${entityName}DTO> queryNoPage(${entityName}Query query);

}


