package org.zerock.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	private BoardService service;
	
//	@GetMapping("/list")
//	public void list(Model model) {
//		log.info("list 처리가 이루어집니다!");
//		model.addAttribute("list", service.getList());
//	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list 처리가 이루어집니다!" + cri);
		model.addAttribute("list", service.getList(cri));
		// Page322 ~ Page324까지 14.6 MyBatis에서 전체 데이터의 개수 처리
		// 부분에서 아래 PageDTO 매개변수 200에 대해서 getTotalCount() 메서드 활용 수정 코딩해 줍니다.
//		model.addAttribute("pageMaker", new PageDTO(cri, 200));
		
		int total = service.getTotal(cri);
		log.info("전체 데이터 수량 = " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
		// Page238 게시물의 등록 작업은 POST방식으로 처리하지만,
		// 화면에서 입력을 받아야 하므로 GET방식으로 입력 페이지를 볼 수 있도록
		// BoardController에 register() 메서드를 추가합니다.
		// 이때, register() 메서드는 입력 페이지를 보여주는 역할만을 하기 때문에
		// 별도의 처리가 필요하지 않습니다.
		@GetMapping("/register")
		public void register() {
			
		}
	
	   // register() 메서드는 조금 다르게 String을 리턴 타입으로 지정하고,
	   // RedirectAttributes 를 파라미터로 지정합니다. 이것은 등록 작업(register)이 끝난 후
	   // 다시 목록 화면으로 이동하기 위함인데, 추가적으로 새롭게 등록된 게시물의 번호를 같이 전달하기 위해서
	   // RedirectAttributes를 이용합니다. 리턴 시에는 'redirect:' 접두어를 사용하는데
	   // 이를 이용하면 스프링 MVC가 내부적으로 response.sendRedirect()를 처리해 주기 때문에 편리합니다.
	
	  @PostMapping("/register")
	    public String register(BoardVO board, @RequestParam("photo") MultipartFile photo, RedirectAttributes rttr, HttpServletRequest request) {
	        log.info("글 등록 처리를 합니다!" + board);
		
		if (!photo.isEmpty()) {
            try {
                // 파일 저장 경로 설정
            	String uploadDir = "C:/sosohan_project/boardimg";

            	// 고유한 파일명 생성
            	String originalFileName = photo.getOriginalFilename();
            	String replacedFileName = originalFileName.replace(" ", "_"); // 띄어쓰기를 대체 문자로 변경
            	String encodedFileName = URLEncoder.encode(replacedFileName, "UTF-8");
            	String fileName = UUID.randomUUID().toString() + "_" + encodedFileName;
                System.out.println("fileName");
                // 파일 저장
                photo.transferTo(new File(uploadDir, fileName));

                // 게시글에 파일명 설정
                board.setPhotoFileName(fileName);
            } catch (IOException e) {
                // 파일 저장 실패 처리
                e.printStackTrace();
            }
        }
		
		service.register(board);
		
		//  addFlashAttribute() 메서드는 일회성으로만 데이터를 전달하기 때문에,
		//  addFlashAttribute() 메서드로 보관된 데이터는 단 한번만 사용할 수 있게
		//  보관됩니다.
		rttr.addFlashAttribute("result", board.getBno());
		return "redirect:/board/list";  //redirect:갱신
	}
	  @GetMapping({"/get", "/modify"})
	  public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
	      log.info("/get or modify");
	      BoardVO board = service.get(bno);
	      
	      // 이미지 파일 경로 설정
	      String uploadDir = "C:/sosohan_project/boardimg"; // 실제 파일이 저장된 경로로 수정해야 합니다.
	      String filePath = uploadDir + File.separator + board.getPhotoFileName();
	      
	      // 이미지 파일 경로를 모델에 추가
	      model.addAttribute("filePath", filePath);
	      model.addAttribute("board", board);
	      model.addAttribute("uploadDir", uploadDir);
	      
	  }
	  

	  @GetMapping(value = "/serverimg/{fileName:.+}", produces = { MediaType.IMAGE_JPEG_VALUE, MediaType.IMAGE_PNG_VALUE, MediaType.IMAGE_GIF_VALUE })
	  public ResponseEntity<Resource> getImage(@PathVariable String fileName, HttpServletRequest request) throws IOException {
	      String uploadDir = "C:/LastProject/serverimg";
	      String encodedFileName = URLEncoder.encode(fileName, StandardCharsets.UTF_8.toString())
	          .replace("+", "%20")
	          .replace("%2F", "/")
	          .replace("%3A", ":")
	      		.replace(" ", "_");
	      File file = new File(uploadDir, encodedFileName);
	      Resource resource = new UrlResource(file.toURI());

	      if (resource.exists() && resource.isReadable()) {
	          return ResponseEntity.ok().body(resource);
	      } else {
	          return ResponseEntity.notFound().build();
	      }
	  }
	
	@PostMapping("/modify")
	public String modify(BoardVO board, @RequestParam("photo") MultipartFile photo, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr, HttpServletRequest request) {
	    log.info("글수정 처리가 되었습니다! ==> " + board);

	    if (!photo.isEmpty()) {
	        try {
	            // 파일 저장 경로 설정
	        	String uploadDir = "C:\\LastProject\\serverimg";// 실제 파일을 저장할 경로로 수정해야 합니다.

	            // 고유한 파일명 생성
	            String fileName = UUID.randomUUID().toString() + "_" + photo.getOriginalFilename();

	            // 파일 저장
	            photo.transferTo(new File(uploadDir, fileName));

	            // 게시글에 파일명 설정
	            board.setPhotoFileName(fileName);
	        } catch (IOException e) {
	            // 파일 저장 실패 처리
	            e.printStackTrace();
	        }
	    }
		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum",cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/board/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("글삭제 처리가 되었습니다! ==> " + bno);
		
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum",cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type",cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/list";
	}
	
	
	
}
