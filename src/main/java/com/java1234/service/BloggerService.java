package com.java1234.service;

import com.java1234.entity.Blogger;

/**
 * ����Service�ӿ�
 * @author java1234_С��
 *
 */
public interface BloggerService {

	/**
	 * ��ѯ������Ϣ
	 * @return
	 */
	public Blogger find();
	
	/**
	 * ͨ���û�����ѯ�û�
	 * @param userName
	 * @return
	 */
	public Blogger getByUserName(String userName);
	
	/**
	 * ���²�����Ϣ
	 * @param blogger
	 * @return
	 */
	public Integer update(Blogger blogger);
}
