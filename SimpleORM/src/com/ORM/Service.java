package com.ORM;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class Service {

	@Autowired
	private EmpDAO edao;
	int index = 0;

	@Transactional
	public void add(Employee emp) {
		edao.persist(emp);
	}

	@Transactional
	public void addAll(Collection<Employee> empList) {
		for (Employee emp : empList) {
			edao.persist(emp);
		}
	}

	@Transactional(readOnly = true)
	public List<Employee> listAll() {
		return edao.findAll();

	}

	public Employee getEmp(String click) {
		List<Employee> emp = listAll();
		if ("first".equals(click)) {
			index = 0;
		} else if ("next".equals(click)) {
			if (index < emp.size() - 1) {
				index += 1;
			}
		} else if ("prev".equals(click)) {
			if (index > 0) {
				index -= 1;
			}
		} else if ("last".equals(click)) {
			index = emp.size() - 1;
		}
		return emp.get(index);
	}

	public Employee getEmp() {
		List<Employee> emp = listAll();
		return emp.get(index);
	}
}