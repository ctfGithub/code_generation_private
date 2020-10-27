<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${package}.mapper.${entityName}DAO">
    <resultMap id="BaseResultMap" type="${package}.entity.${entityName}DO">
        ${resultMap}
    </resultMap>

    <!-- 查询 -->
    <select id="query" resultType="${package}.entity.${entityName}DO" parameterType=${package}.entity.${entityName}Query">
        SELECT *
        FROM  ${tableName} where 1=1

         ${queryColProps}
            <if test="pageSize != null and offset != null">
                limit <#noparse>#{offset},#{pageSize}</#noparse>
            </if>



    </select>

    <!-- 查询 总条数-->
    <select id="queryCount" resultType="java.lang.Integer" parameterType=${package}.entity.${entityName}Query">
        SELECT COUNT(1)
        FROM  ${tableName} where 1=1
        ${queryColProps}

    </select>


    <!-- 删除-->
    <delete id="delete" parameterType="java.lang.Long" >
        DELETE FROM  ${tableName} where ID = <#noparse>#{id}</#noparse>
    </delete>


    <!--插入-->
    <insert id="insert" keyProperty="id" useGeneratedKeys="true" parameterType=${package}.entity.${entityName}DO" >
        INSERT INTO ${tableName} (
            ${insertColumns}
        ) VALUE (
            ${insertProps}
        )
    </insert>


    <!--修改-->
    <update id="update" parameterType=${package}.entity.${entityName}DO" >
        UPDATE   ${tableName}
        ${updateColProps}
        where ID = <#noparse>#{id}</#noparse>
    </update>


    <!-- 查询某一个对象 -->
    <select id="queryById" resultType="${package}.entity.${entityName}DO" parameterType="java.lang.Long">
        SELECT *
        FROM  ${tableName} where ID = <#noparse>#{id}</#noparse>
        LIMIT 1
    </select>


</mapper>
