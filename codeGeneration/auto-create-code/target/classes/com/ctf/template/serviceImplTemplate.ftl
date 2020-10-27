package ${package}.service.impl;

import java.util.Map;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${package}.bo.${entityName}Bo;
import ${package}.entity.${entityName};
import ${package}.service.${entityName}Service;
import lombok.extern.slf4j.Slf4j;


/**
* @Description:
* @author ${author}
* @date ${now}
*/
@Service
@Slf4j
public class ${entityName}ServiceImpl implements ${entityName}Service {

    @Autowired
    private ${entityName}Manager ${instanceName}Manager;


    /**
    * 列表查询
    */
    @Override
    public List<${entityName}DTO> query(${entityName}Query ${instanceName}Query) {
    List<${entityName}DO> list = ${instanceName}Manager.query(${instanceName}Query);
        if(CollectionUtils.isEmpty(list)) {
            return new ArrayList();
        }

        if(null == query.getTotalRecored()) {
            Integer cnt = ${instanceName}Manager.queryCount(${instanceName}Query);
            query.setTotalRecored(cnt == null ? 0 : cnt);
        }

        List<${entityName}DTO> resultList = list.stream()
            .map(d -> {
            ${entityName}DTO dto = new ${entityName}DTO();
            BeanUtils.copyProperties(d, dto);
            return dto;
            })
            .collect(Collectors.toList());

        return resultList;
    }

    /**
    * 查询一个对象
    */
    @Override
    public ${entityName}DO queryById(Long id) {
        return ${instanceName}Manager.queryById(id);
    }

    /**
    * 更新
    */
    @Override
    public int update(${entityName}DTO ${instanceName}DTO) {
        ${entityName}DO ${instanceName}DO;
        if((${entityName}DO =  ${instanceName}Manager.queryById(${instanceName}DTO.getId())) == null) {
        return 0;
        }

        BeanUtils.copyProperties(${instanceName}DTO, ${instanceName}DO);
        return ${instanceName}Manager.update(${instanceName}DO);
    }

    /**
    * 删除
    */
    @Override
    public int delete(Long id) {
        return ${instanceName}Manager.delete(id);
    }

    /**
    *新增
    */
    @Override
    public int save(${entityName}DTO ${instanceName}DTO) {
        ${entityName}DO ${instanceName}DO = new ${entityName}DO();
        BeanUtils.copyProperties(${instanceName}DTO, ${instanceName}DO);
        return ${instanceName}Manager.save(${instanceName}DO);
    }

    @Override
    public List<${entityName}DTO> queryNoPage(${entityName}Query query) {
        return queryNoPage(query, 300000l);
    }

    @Override
    public List<${entityName}DTO> queryNoPage(${entityName}Query query, Long timeOut) {
        Long start = System.currentTimeMillis();
        query.setPageSize(2000);

        List<${entityName}DTO> list = new ArrayList<>();
        List<${entityName}DTO> temp;
        while (!CollectionUtils.isEmpty(temp = query(query))) {
            if(System.currentTimeMillis() - start > timeOut) {
            throw new SntException("-1111", "查询超时");
            }
            list.addAll(temp);
            query.setCurrentPage(query.getCurrentPage() + 1);
        }
        return list;
    }

}


