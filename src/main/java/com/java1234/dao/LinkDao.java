package com.java1234.dao;

import java.util.List;
import java.util.Map;

import com.java1234.entity.Link;

/**
 * ��������Dao�ӿ�
 * @author Administrator
 *
 */
public interface LinkDao {

	/**
	 * �����������
	 * @param link
	 * @return
	 */
	public int add(Link link);
	
	/**
	 * �޸���������
	 * @param link
	 * @return
	 */
	public int update(Link link);
	
	/**
	 * ��������������Ϣ
	 * @param map
	 * @return
	 */
	public List<Link> list(Map<String,Object> map);	
	
	/**
	 * ��ȡ�ܼ�¼��
	 * @param map
	 * @return
	 */
	public Long getTotal(Map<String,Object> map);
	
	/**
	 * ɾ����������
	 * @param id
	 * @return
	 */
	public Integer delete(Integer id);
}
