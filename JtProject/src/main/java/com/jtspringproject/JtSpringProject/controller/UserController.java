package com.jtspringproject.JtSpringProject.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.jtspringproject.JtSpringProject.objects.Buyer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController{
	Buyer currentUser = new Buyer();

	@GetMapping("/landing")
	public String landing()
	{
		return "landing";
	}
	@GetMapping("/register")
	public String registerUser()
	{
		return "register";
	}
	@GetMapping("/shop")
	public String getShop()
	{
		return "shop";
	}
	@GetMapping("/about")
	public String getAbout()
	{
		return "about";
	}
	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
	}
	@GetMapping("/account")
	public String account()
	{
		return "updateProfile";
	}
	@GetMapping("/changePassword")
	public String changePassword()
	{
		return "changePassword";
	}
	@GetMapping("/refund")
	public String refund()
	{
		return "refund";
	}
	@GetMapping("/terms")
	public String terms()
	{
		return "terms";
	}
	@GetMapping("/cart")
	public String cart()
	{
		return "cart";
	}
	@GetMapping("/buy")
	public String buy()
	{
		return "buy";
	}
	@GetMapping("/myOrders")
	public String orders()
	{
		return "myOrders";
	}
	@GetMapping("/product")
	public String product()
	{
		return "product";
	}
	@GetMapping("/products")
	public String products()
	{
		return "uproducts";
	}
	@GetMapping("/checkout")
	public String getCheckout()
	{
		return "checkout";
	}
	@GetMapping("/user/products")
	public String getproduct(Model model) {
		return "uproduct";
	}

	@RequestMapping(value = "newuserregister", method = RequestMethod.POST)
	public String newUseRegister(@RequestParam("username") String username,
								 @RequestParam("f_name") String f_name,
								 @RequestParam("l_name") String l_name,
								 @RequestParam("password") String password,
								 @RequestParam("email") String email)
	{
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainmill","bisry","password");
			PreparedStatement pst = con.prepareStatement("insert into users(username, f_name, l_name ,password,email) values(?,?,?,?,?);");
			pst.setString(1, username);
			pst.setString(2, f_name);
			pst.setString(3, l_name);
			pst.setString(4, password);
			pst.setString(5, email);

			currentUser.setUsername(username);
			currentUser.setFirstName(f_name);
			currentUser.setLastName(l_name);
			currentUser.setPassword(password);
			currentUser.setEmail(email);

			int i = pst.executeUpdate();
			System.out.println("data base updated"+i);
			
		}

		catch(Exception e)
		{
			String str1 = e.toString();
			String check = "Access denied for user 'root'@'localhost' (using password: NO)";
			if(str1.contains(check)) {
				return "redirect:/";
			}
			System.out.println(str1);
			System.out.println("Exception:"+e);
		}
		return "redirect:/";
	}
}
