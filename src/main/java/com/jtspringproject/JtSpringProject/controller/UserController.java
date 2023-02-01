package com.jtspringproject.JtSpringProject.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import static com.jtspringproject.JtSpringProject.controller.AdminController.currentUser;

@Controller
public class UserController {
//	Buyer currentUser = new Buyer();

	@RequestMapping(value = "newuserregister", method = RequestMethod.POST)
	public String newUseRegister(@RequestParam("username") String username,
								 @RequestParam("f_name") String f_name,
								 @RequestParam("l_name") String l_name,
								 @RequestParam("password") String password,
								 @RequestParam("email") String email) {
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainmill", "bisry", "password");
			PreparedStatement pst = con.prepareStatement("insert into users(username, f_name, l_name ,password,email) values(?,?,?,?,?);");
			pst.setString(1, username);
			pst.setString(2, f_name);
			pst.setString(3, l_name);
			pst.setString(4, password);
			pst.setString(5, email);

			currentUser = new Buyer();
			currentUser.setUsername(username);
			currentUser.setFirstName(f_name);
			currentUser.setLastName(l_name);
			currentUser.setPassword(password);
			currentUser.setEmail(email);

			int i = pst.executeUpdate();
			System.out.println("data base updated" + i);

		} catch (Exception e) {
			String str1 = e.toString();
			String check = "Access denied for user 'bisry'@'localhost' (using password: NO)";
			if (str1.contains(check)) {
				return "redirect:/";
			}
			System.out.println(str1);
			System.out.println("Exception:" + e);
		}
		return "redirect:/index";
	}


	@GetMapping("/landing")
	public String landing() {
		return "landing";
	}

	@GetMapping("/register")
	public String registerUser() {
		return "register";
	}

	@GetMapping("/shop")
	public String getShop() {
		if (AdminController.usernameforclass.equalsIgnoreCase("")) return "userLogin";
		else {
			return "shop";
		}
	}

	@GetMapping("/search")
	public String search(Model model, @RequestParam("val") String value) {
		if (AdminController.usernameforclass.equalsIgnoreCase("")) return "userLogin";
		else {
			model.addAttribute("value", value);
			return "search";
		}
	}

	@GetMapping("/about")
	public String getAbout() {
		return "about";
	}

	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}

	@GetMapping("/account")
	public String account(Model model) {
		if (AdminController.usernameforclass.equalsIgnoreCase("")) return "userLogin";
		else {
			model.addAttribute("user", currentUser);
			return "updateProfile";
		}
	}

	@GetMapping("/changepassword")
	public String changePassword(Model model) {
		if (AdminController.usernameforclass.equalsIgnoreCase("")) return "userLogin";
		else {

			model.addAttribute("user", currentUser);
			return "changePassword";
		}
	}

	@GetMapping("/refund")
	public String refund() {
		return "refund";
	}

	@GetMapping("/terms")
	public String terms() {
		return "terms";
	}

	@GetMapping("/cart")
	public String cart(Model model) {
		if (AdminController.usernameforclass.equalsIgnoreCase("")) return "userLogin";
		else {
			model.addAttribute("userid", currentUser.getId());
			return "cart";
		}
	}

	@GetMapping("/buy")
	public String buy() {
		return "buy";
	}

	@GetMapping("/myOrders")
	public String orders(Model model) {
		if (AdminController.usernameforclass.equalsIgnoreCase("")) return "userLogin";
		else {
			model.addAttribute("user", currentUser);
			return "myOrders";
		}
	}

	@GetMapping("/products")
	public String products() {
		return "uproduct";
	}

	@GetMapping("/checkout")
	public String getCheckout(Model model,
							  @RequestParam("items") String item,
							  @RequestParam("total") String total,
							  @RequestParam("mtotal") String mtotal

		) {
		if (AdminController.usernameforclass.equalsIgnoreCase("")) return "userLogin";
		else {
			model.addAttribute("items", item);
			model.addAttribute("total", total);
			model.addAttribute("mtotal", mtotal);

			return "checkout";
		}
	}


	@RequestMapping(value = "check", method = RequestMethod.POST)
	public String checkOut(
			@RequestParam("items") int items,
			@RequestParam("price") float price,
			@RequestParam("pmode") int pmode

	){

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainmill", "bisry", "password");
			PreparedStatement pst = con.prepareStatement("INSERT INTO `order` (`userId`, `items`, `price`, `pmode`,`status`) VALUES (?, ?, ?,?,?)");
			PreparedStatement pst1 = con.prepareStatement("DELETE FROM `cart` where userId=?");
			pst1.setInt(1, currentUser.getId());

			pst.setInt(1, currentUser.getId());
			pst.setInt(2, items);
			pst.setInt(3, (int) price);
			pst.setInt(4, pmode);
			pst.setInt(5, 0);
			int i = pst.executeUpdate();
			int j = pst1.executeUpdate();

		} catch (Exception e) {
			System.out.println("Exception:" + e);
		}

		return "redirect:/myOrders";
	}
	@GetMapping("/user/products")
	public String getproduct(Model model) {
		return "uproduct";
	}
}