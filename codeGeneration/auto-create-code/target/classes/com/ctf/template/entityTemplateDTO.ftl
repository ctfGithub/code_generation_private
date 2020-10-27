package ${package}.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

/**
 * @author ${author}
 * @time: ${now}
 */
@Data
public class ${entityName}DTO  implements Serializable {

    private static final long serialVersionUID = 1L;

	${createPropStr}
	

}
