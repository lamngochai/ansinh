package com.stechviet.ansinh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stechviet.ansinh.form.UploadForm;

@Controller
public class UsersController {
		

	@RequestMapping(value = "/user_repair_martyr", method = RequestMethod.GET)
    public String userRepair(Model model) {
        return "users_repair/martyr";
    }
	@RequestMapping(value = "/edit_list", method = RequestMethod.GET)
    public String editList(Model model) {
        return "users_repair/martyr_edit_list";
    }
	@RequestMapping(value = "/check_list", method = RequestMethod.GET)
    public String checkList(Model model) {
        return "users_repair/martyr_check_list";
    }
	@RequestMapping(value = "/data_list", method = RequestMethod.GET)
    public String dataList(Model model) {
        return "users_repair/martyr_data_list";
    }
	
	@RequestMapping(value = "/user_rude_martyr", method = RequestMethod.GET)
    public String reduMartyr(Model model) {
        return "users_rude/martyr";
    }
	@RequestMapping(value = "/user_redu_index", method = RequestMethod.GET)
    public String reduIndex(Model model) {
        return "users_rude/index";
    }
	@RequestMapping(value = "/rude_sigle_upload", method = RequestMethod.GET)
    public String reduDataSigleUpload(Model model) {
		UploadForm UploadForm = new UploadForm();
	       model.addAttribute("UploadForm", UploadForm);
        return "users_rude/rude_sigle_upload";
    }
	@RequestMapping(value = "/rude_muti_upload", method = RequestMethod.GET)
    public String reduDataMutiUpload(Model model) {
        return "users_rude/rude_muti_upload";
    }
	@RequestMapping(value = "/rude_data_list", method = RequestMethod.GET)
    public String rudeDataList(Model model) {
        return "users_rude/rude_data_list";
    }
	@RequestMapping(value = "/rude_edit_list", method = RequestMethod.GET)
    public String rudeEditList(Model model) {
        return "users_rude/rude_edit_list";
    }
	
	
	@RequestMapping(value = "/user_repair_index", method = RequestMethod.GET)
    public String userRepairIndex(Model model) {
        return "users_repair/index";
    }
}
