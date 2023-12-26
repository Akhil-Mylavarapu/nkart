package com.nkart.shoppingcart.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nkart.shoppingcart.dao.SupplierDAO;
import com.nkart.shoppingcart.domain.Supplier;



@Controller
public class SupplierController {
	
	private static Logger log = LoggerFactory.getLogger(SupplierController.class);

	@Autowired
	private SupplierDAO supplierDAO;

	@Autowired
	private Supplier supplier;
	
	


	@PostMapping(value = "/manage_create_supplier")
	public String createSupplier(@ModelAttribute("supplier") Supplier supplier, Model model) {

		log.debug(" Starting of the method createSupplier");
		log.info("id:" + supplier.getId());
		
		if (supplierDAO.createSupplier(supplier) == true) {
			
			model.addAttribute("Message", "Successfully created supplier");
		} 
		else 
		{
			model.addAttribute("Message", "Supplier Not Created");
		}
		model.addAttribute("supplier", supplier);
		model.addAttribute("supplierList", supplierDAO.getAllSuppliers());
		model.addAttribute("isAdminClickedSupplier", "true");
		
		log.debug(" Ending of the method createSupplier");
		return "redirect:/manage_Suppliers";
	}

	@RequestMapping("/manage_Delete_Supplier/{id}")
	public String deleteSupplier(@PathVariable("id") int id, Model model) throws Exception{

		log.debug("Starting of the method deleteSupplier");
		supplier.setId(id);
		boolean flag = supplierDAO.deleteSupplier(supplier);
		model.addAttribute("Message","successfully deleted supplier");
		
		
		if (flag != true) 
		{
			model.addAttribute("Message","supplier not deleted");
		}
		
		
		log.debug("Ending of the method deleteSupplier");
		return "redirect:/manage_Suppliers";
	}

	@GetMapping(value="/manage_Edit_Supplier/{id}")
	public String editSupplier(@PathVariable("id") int id,RedirectAttributes attributes) {
		log.debug("Starting of the method editSupplier");
			supplier.setId(id);	
           attributes.addFlashAttribute("supplier", this.supplierDAO.getSupplierById(id));
		
           log.debug("Ending of the method editSupplier");
		return "redirect:/manage_Suppliers";
	}
	
	@RequestMapping(value="/manage_Update_supplier")
	public String updateCategory(@ModelAttribute("supplier") Supplier supplier)
	{
		log.debug("Starting of the method updateSupplier");
		supplierDAO.updateSupplier(supplier);
		log.debug("Ending of the method updateSupplier");
		return "redirect:/manage_Suppliers";
	
	}
}
