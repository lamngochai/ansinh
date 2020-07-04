package com.stechviet.ansinh.form;

import org.springframework.web.multipart.MultipartFile;

public class UploadFormAjax {
	private String description;
	private String description02; 
    public String getDescription02() {
		return description02;
	}

	public void setDescription02(String description02) {
		this.description02 = description02;
	}

	private MultipartFile[] files;
 
    public String getDescription() {
        return description;
    }
 
    public void setDescription(String description) {
        this.description = description;
    }
 
    public MultipartFile[] getFiles() {
        return files;
    }
 
    public void setFiles(MultipartFile[] files) {
        this.files = files;
    }
}
