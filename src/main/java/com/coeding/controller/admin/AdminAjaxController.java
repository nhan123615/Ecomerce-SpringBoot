package com.coeding.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.coeding.entity.Type;
import com.coeding.service.TypeService;
/**
 * 
 * @author Lam Cong Hau
 *
 */
@RestController
@RequestMapping(path = "/select", produces = "application/json")
@CrossOrigin(origins = "*")
public class AdminAjaxController {
	@Autowired
	private TypeService typeService;

	@GetMapping
	public List<Type> typeList(@RequestParam(name = "id_category", required = false) Long id) {
		List<Type> list = typeService.findAll();;
		List<Type> result = new ArrayList<Type>();
		if (id != null) {
			if (list != null) {
				for (Type t : list) {
					if(t.getCategory().getId().equals(id)) {
						result.add(t);
					}
				}
			}
		}
		return result;
	}
}
