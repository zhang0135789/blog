package vip.zhang123.service;

import vip.zhang123.entity.Blogger;

/**
 * ����Service�ӿ�
 * @author zz
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
