package com.stechviet.ansinh.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import com.stechviet.ansinh.form.UploadFormAjax;

@Controller
public class UploadController {
	// Linux: /home/{user}/test
    // Windows: C:/Users/{user}/test
    private static String UPLOAD_DIR = System.getProperty("user.home") + "/test";
    
    @RequestMapping(value="/uploadMultiFiles" , method = RequestMethod.POST)
    public ResponseEntity<?> multiUploadFileModel(@ModelAttribute UploadFormAjax form) {
 
        System.out.println("Description:" + form.getDescription());
        System.out.println("Description:" + form.getDescription02());
 
        String result = null;
        try {
 
            result = this.saveUploadedFiles(form.getFiles());
 
        }
        // Here Catch IOException only.
        // Other Exceptions catch by RestGlobalExceptionHandler class.
        catch (IOException e) {
            e.printStackTrace();
            return new ResponseEntity<>("Error: " + e.getMessage(), HttpStatus.BAD_REQUEST);
        }
 
        return new ResponseEntity<String>("Uploaded to: <br/>" + result, HttpStatus.OK);
 
    }
 
    // Save Files
    private String saveUploadedFiles(MultipartFile[] files) throws IOException {
 
        // Make sure directory exists!
        File uploadDir = new File(UPLOAD_DIR);
        uploadDir.mkdirs();
 
        StringBuilder sb = new StringBuilder();
 
        for (MultipartFile file : files) {
 
            if (file.isEmpty()) {
                continue;
            }
            String uploadFilePath = UPLOAD_DIR + "/" + file.getOriginalFilename();
 
            byte[] bytes = file.getBytes();
            Path path = Paths.get(uploadFilePath);
            Files.write(path, bytes);
 
            sb.append(uploadFilePath).append("<br/>");
        }
        return sb.toString();
    }
}
