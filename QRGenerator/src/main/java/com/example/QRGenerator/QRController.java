package com.example.QRGenerator;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;




import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.zxing.WriterException;

@Controller
public class QRController {
	String qr=null;
	static int a = 0;
	private static  String QR_CODE_IMAGE_PATH = "src\\main\\resources\\static\\";
    private String PATH;
	@GetMapping("/")
		public ModelAndView home(ModelAndView mv) {
		mv.setViewName("home");
		
		mv.addObject("qr", qr);
		mv.addObject("a", a);
		return mv;
	}
	
	@GetMapping("/qrcode")
	public ModelAndView home2(ModelAndView mv) {
	mv.setViewName("home");
	
	mv.addObject("qr", qr);
	
	return mv;
}
	
	@PostMapping("/QRcode")
		public ResponseEntity<byte[]> qrcode(@RequestParam String PName, @RequestParam String PKind, @RequestParam String OName, @RequestParam String OAddress, 
				@RequestParam String OPhone, @RequestParam String OEmail,ModelAndView mv) throws WriterException, IOException 
		{
		
			String codeText = "                    Welcome Dear                     \n"+
							  "    Please if you are asking for this pet's owner    \n"+
							  "          Check the following informations           \n"+
							  "            -----------------------------            \n"+
							  " * Pet's Name      : "+PName+"\n"+
							  " * Pet's Kind      : "+PKind+"\n"+
							  " * Owner's Name    : "+OName+"\n"+
							  " * Owner's Address : "+OAddress+"\n"+
							  " * Owner's Phone   : "+OPhone+"\n"+
							  " * Owner's Email   : "+OEmail+"\n"+
							  "            -----------------------------            \n";
			qr =PName+OName+".png";
			PATH = QR_CODE_IMAGE_PATH +qr;
		 
			QRGenerator.generateQRCodeImage(codeText, 150, 150, PATH);


			String filename = "src\\main\\resources\\static\\" + qr ;
	        InputStream inputImage = new FileInputStream(filename);
	        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	        byte[] buffer = new byte[1000];
	        int l = inputImage.read(buffer);
	        while(l >= 0) {
	            outputStream.write(buffer, 0, l);
	            l = inputImage.read(buffer);
	        }
	        HttpHeaders headers = new HttpHeaders();
	        headers.set("Content-Type", "image/jpeg");
	        headers.set("Content-Disposition", "attachment; filename=\"" + qr + "\"");
	                
	        
	        return new ResponseEntity<byte[]>(outputStream.toByteArray(), headers, HttpStatus.OK);
			
		}
	
   

    
}
