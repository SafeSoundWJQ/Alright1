package org.fkit.service;

import org.fkit.domain.Manager;

public interface ManagerService {
	//管理员登陆
	Manager selectManager(Manager manager);
}
