package ${package}.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;
import com.wzw.util.SntPage;

/**
 * @author ${author}
 * @time: ${now}
 */
@Data
public class ${entityName}Query extends SntPage implements Serializable {

    private static final long serialVersionUID = 1L;

	${createPropStr}


	

}
