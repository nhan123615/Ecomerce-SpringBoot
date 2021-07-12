package com.coeding.service;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coeding.entity.CustomerOrder;
import com.coeding.repository.DAO;
import com.coeding.repository.OrderRepository;

@Service
@Transactional
public class OrderService implements DAO<CustomerOrder> {
	@Autowired
	private OrderRepository repo;

	@Override
	public List<CustomerOrder> findAll() {
		return repo.findAll();
	}

	@Override
	public CustomerOrder findById(Long id) {
		return repo.findById(id).get();
	}

	@Override
	public void save(CustomerOrder vo) {
		repo.save(vo);

	}

	@Override
	public void delete(Long id) {
		repo.deleteById(id);

	}
	
	public int numberNewOrder() {
		Calendar c = Calendar.getInstance();
		int day = c.get(Calendar.DAY_OF_MONTH);
		int month = c.get(Calendar.MONTH)+1;
		int year = c.get(Calendar.YEAR);
		int number = repo.countOrderToDay(day, month, year);
		return number;
	}
	
//	public HashMap<Integer, Double> statistiqueSalesByYear(int year) {
//		double totalPrice1 = 0.0;
//		double totalPrice2 = 0.0;
//		double totalPrice3 = 0.0;
//		double totalPrice4 = 0.0;
//		double totalPrice5 = 0.0;
//		double totalPrice6 = 0.0;
//		double totalPrice7 = 0.0;
//		double totalPrice8 = 0.0;
//		double totalPrice9 = 0.0;
//		double totalPrice10 = 0.0;
//		double totalPrice11 = 0.0;
//		double totalPrice12 = 0.0;
//		List<CustomerOrder> list = repo.findAll();
//		if (list != null) {
//			for (CustomerOrder order : list) {
//				if (order.isStatus()) {
//					if (order.getOrderDate().getYear() == year) {
//						switch (order.getOrderDate().getMonth() + 1) {
//						case 1:
//							totalPrice1 += order.getTotalPrice();
//							break;
//						case 2:
//							totalPrice2 += order.getTotalPrice();
//							break;
//						case 3:
//							totalPrice3 += order.getTotalPrice();
//							break;
//						case 4:
//							totalPrice4 += order.getTotalPrice();
//							break;
//						case 5:
//							totalPrice5 += order.getTotalPrice();
//							break;
//						case 6:
//							totalPrice6 += order.getTotalPrice();
//							break;
//						case 7:
//							totalPrice7 += order.getTotalPrice();
//							break;
//						case 8:
//							totalPrice8 += order.getTotalPrice();
//							break;
//						case 9:
//							totalPrice9 += order.getTotalPrice();
//							break;
//						case 10:
//							totalPrice10 += order.getTotalPrice();
//							break;
//						case 11:
//							totalPrice11 += order.getTotalPrice();
//							break;
//						case 12:
//							totalPrice12 += order.getTotalPrice();
//							break;
//						default:
//							break;
//						}
//					}
//				}
//			}
//		}
//		HashMap<Integer, Double> result = new HashMap<Integer, Double>();
//		result.put(1, totalPrice1);
//		result.put(2, totalPrice2);
//		result.put(3, totalPrice3);
//		result.put(4, totalPrice4);
//		result.put(5, totalPrice5);
//		result.put(6, totalPrice6);
//		result.put(7, totalPrice7);
//		result.put(8, totalPrice8);
//		result.put(9, totalPrice9);
//		result.put(10, totalPrice10);
//		result.put(11, totalPrice11);
//		result.put(12, totalPrice12);
//		return result;
//	}

}
