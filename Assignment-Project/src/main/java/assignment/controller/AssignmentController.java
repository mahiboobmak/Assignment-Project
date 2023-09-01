package assignment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import assignment.dao.AssignmentDao;
import assignment.dto.AssignmentDto;

@Controller
public class AssignmentController {

	@Autowired
	AssignmentDao assignmentDao;

	@ResponseBody
	@RequestMapping("/signup")
	public ModelAndView signup(@ModelAttribute AssignmentDto d1) {
		assignmentDao.signup(d1);
		ModelAndView view = new ModelAndView("index.jsp");
		view.addObject("msg", "Account Created Successfuly.  <a href=\"login.jsp\">Login</a> Now");
		return view;
	}

	@RequestMapping("/login")
	@ResponseBody
	public ModelAndView login(@RequestParam("email") String email, @RequestParam("password") String password1) {
		AssignmentDto d3 = assignmentDao.login(email);

		ModelAndView andView = new ModelAndView();

		if (d3 == null) {
			andView.setViewName("login.jsp");
			andView.addObject("msg", "invalid username");
		} else {
			if (d3.getPassword().equals(password1)) {
				andView.setViewName("download.jsp");
				AssignmentDto dto=assignmentDao.fetchbyId(email);
				andView.addObject("object", dto);
				andView.addObject("msg", "Login Success");
			} else {
				andView.setViewName("login.jsp");
				andView.addObject("msg", "invalid password");
			}
		}
		return andView;

	}
}
