package ${package}.web.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import ${package}.entity.${entityName}DO;
import ${package}.service.${entityName}Service;
import com.ztesoft.common.logger.ErrorCode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.songshu.snt.base.common.SntResult;

/**
* @ClassName: ${entityName}Controller
* @Description:
* @author ${author}
* @date ${now}
*/
@RestController
@RequestMapping("/api/p/${instanceName}Controller")
@Slf4j
public class ${entityName}Controller {
    private static Logger LOGGER = LoggerFactory.getLogger(${entityName}.class);


    @Autowired
    private ${entityName}Service ${instanceName}Service;

    /**
    * @Description: 列表查询
    * @author Created by ${author} on ${now}
    */
    @GetMapping("/query")
    public SntResult<List<${entityName}DTO>> query(${entityName}Query query) {
    List<${entityName}DTO> list = ${instanceName}Service.query(query);
        return SntResult.okOfFormat(list, query);
    }

    /**
    * @Description: 根据主键查询
    * @author Created by ${author} on ${now}
    */
    @GetMapping("/getById")
    public SntResult<${entityName}DTO> getById(@PathVariable Long id) {
        return SntResult.okOfFormat(${instanceName}Service.getById(id));
    }

    /**
    * @Description: 新增
    * @author Created by ${author} on ${now}
    */
    @PostMapping("/save")
    public SntResult<Integer> save(@RequestBody ${entityName}DTO ${instanceName}DTO) {
        Integer cnt = ${instanceName}Service.save(${instanceName}DTO);
        return SntResult.ok(cnt);
    }


    /**
    * @Description: 修改
    * @author Created by ${author} on ${now}
    */
    @PutMapping("/update")
    public SntResult<Integer> update(@RequestBody ${entityName}DTO ${instanceName}DTO) {
        Integer cnt = ${instanceName}Service.update(${instanceName}DTO);
        return SntResult.ok(cnt);
    }

    /**
    * @Description: 删除
    * @author Created by ${author} on ${now}
    */
    @DeleteMapping("/delete")
    public SntResult delete(@PathVariable Long id){
        return SntResult.ok(${instanceName}Service.delete(id));
    }


}
