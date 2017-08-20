package in.moduler.practice.fileUpload.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import in.moduler.practice.fileUpload.model.FileBucket;
import in.moduler.practice.fileUpload.model.MultiFileBucket;
import in.moduler.practice.fileUpload.util.FileValidator;
import in.moduler.practice.fileUpload.util.MultiFileValidator;

@Controller
public class FileUploadController {

	private static String UPLOAD_LOCATION="C:/mytemp/";

	@Autowired
	FileValidator fileValidator;

	@Autowired
	MultiFileValidator multiFileValidator;

	@InitBinder("fileBucket")
	protected void initBinderFileBucket(WebDataBinder binder) {
		binder.setValidator(fileValidator);
	}

	@InitBinder("multiFileBucket")
	protected void initBinderMultiFileBucket(WebDataBinder binder) {
		binder.setValidator(multiFileValidator);
	}

	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public String getHomePage(ModelMap model) {
		return "fileUpload/welcome";
	}

	@RequestMapping(value = "/singleUpload", method = RequestMethod.GET)
	public String getSingleUploadPage(ModelMap model) {
		FileBucket fileModel = new FileBucket();
		model.addAttribute("fileBucket", fileModel);
		return "fileUpload/singleFileUploader";
	}

	@RequestMapping(value = "/singleUpload", method = RequestMethod.POST)
	public String singleFileUpload(@Valid FileBucket fileBucket,
			BindingResult result, ModelMap model) throws IOException {

		if (result.hasErrors()) {
			System.out.println("validation errors");
			return "fileUpload/singleFileUploader";
		} else {
			System.out.println("Fetching file");
			MultipartFile multipartFile = fileBucket.getFile();

			// Now do something with file...
			FileCopyUtils.copy(fileBucket.getFile().getBytes(), new File( UPLOAD_LOCATION + fileBucket.getFile().getOriginalFilename()));
			String fileName = multipartFile.getOriginalFilename();
			model.addAttribute("fileName", fileName);
			return "fileUpload/success";
		}
	}

	@RequestMapping(value = "/multiUpload", method = RequestMethod.GET)
	public String getMultiUploadPage(ModelMap model) {
		MultiFileBucket filesModel = new MultiFileBucket();
		model.addAttribute("multiFileBucket", filesModel);
		return "fileUpload/multiFileUploader";
	}

	@RequestMapping(value = "/multiUpload", method = RequestMethod.POST)
	public String multiFileUpload(@Valid MultiFileBucket multiFileBucket,
			BindingResult result, ModelMap model) throws IOException {

		if (result.hasErrors()) {
			System.out.println("validation errors in multi upload");
			return "fileUpload/multiFileUploader";
		} else {
			System.out.println("Fetching files");
			List<String> fileNames = new ArrayList<String>();
			// Now do something with file...
			for (FileBucket bucket : multiFileBucket.getFiles()) {
				FileCopyUtils.copy(bucket.getFile().getBytes(), new File(UPLOAD_LOCATION + bucket.getFile().getOriginalFilename()));
				fileNames.add(bucket.getFile().getOriginalFilename());
			}

			model.addAttribute("fileNames", fileNames);
			return "fileUpload/multiSuccess";
		}
	}

}
