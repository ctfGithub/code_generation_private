package ${package}.bo.impl;

import java.util.Map;
import java.util.List;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import ${package}.entity.${entityName};
import org.springframework.stereotype.Component;

/**
* @Description:
* @author ${author}
* @date ${now}
*/
@Component
public class ${entityName}Manager {


    @Autowired
    private ${entityName}DAO ${instanceName}DAO;

    /**
    * 保存
    */
    public Integer save(${entityName}DO ${instanceName}DO) {
        return ${instanceName}DAO.insert(${instanceName}DO);
    }

    /**
    * 删除
    */
    public Integer delete(Long id) {
        return ${instanceName}DAO.delete(id);
    }

    /**
    * 更新 --修改
    */
    public Integer update(${entityName}DO ${instanceName}DO) {
        return ${instanceName}DAO.update(${instanceName}DO);
    }


    /**
    * 查询一个对象
    */
    public ${entityName}DO queryById(Long id) {
        return ${instanceName}DAO.queryById(id);
    }

    /**
    * 查询--列表
    */
    public List<${entityName}DO> query(${entityName}Query ${instanceName}Query) {
        return ${instanceName}DAO.query(${instanceName}Query);
    }

    /**
    * 查询--列表总数
    */
    public Integer queryCount(${entityName}Query ${instanceName}Query) {
        return ${instanceName}DAO.queryCount(${instanceName}Query);
    }












}

