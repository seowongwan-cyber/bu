package com.swg.blog.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sample.service.MemberService;
import com.sample.vo.MemberVO;

@Controller // 컨트롤러임을 명시
@RequestMapping(value = "/") // 주소 패턴
public class MemberController {

	@Inject // 주입(심부름꾼) 명시
	private MemberService service; // Service 호출을 위한 객체생성

	@RequestMapping(value = "/listAll", method = RequestMethod.GET) // 주소 호출 명시.
																	// 호출하려는주소 와
																	// REST
																	// 방식설정(GET)
	public void listAll(Model model) throws Exception { // 메소드 인자값은 model
														// 인터페이스(jsp전달 심부름꾼)
		model.addAttribute("list", service.listAll()); // jsp에 심부름할 내역(서비스 호출)

	}

	// 회원가입
	@RequestMapping(value = "/signup", method = RequestMethod.GET) // GET 방식으로
	// 페이지 호출
	public void registerGET(MemberVO member, Model model) throws Exception {
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST) // POST방식으로
	// 내용 전송
	public String registPOST(MemberVO member, RedirectAttributes rttr) throws Exception { // 인자값으로
		// REDIRECT
		// 사용
		service.regist(member); // 글작성 서비스 호출
		return "home"; // 작성이 완료된 후, 목록페이지로 리턴
	}

	// 리스트 읽기
	@RequestMapping(value = "/read", method = RequestMethod.GET) // GET 방식으로 페이지
	// 호출
	public void read(@RequestParam("unum") int unum, Model model) throws Exception {
		// 인자값은 파라미터 값으로 기본키인 글번호를 기준으로 Model을 사용하여 불러옴
		model.addAttribute(service.read(unum)); // read 서비스 호출
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET) // GET 방식으로
																	// 페이지 호출
	public void modifyGET(int unum, Model model) throws Exception {
		model.addAttribute(service.read(unum)); // 수정을 위한 글읽기 서비스 호출

	}

	// 회원정보 수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST) // POST방식으로
	// 데이터 전송
	public String modifyPOST(MemberVO member, RedirectAttributes rttr) throws Exception {
		service.modify(member); // 글수정 서비스 호출
		return "redirect:/listAll"; // 수정이 완료된 후, 목록페이지로 리턴
	}

	// 회원삭제
	@RequestMapping(value = "/remove", method = RequestMethod.POST) // POST방식으로
																	// 데이터 전송
	public String removePOST(@RequestParam("unum") int unum, RedirectAttributes rttr) throws Exception {
		service.remove(unum); // 글삭제 서비스 호출
		return "redirect:/listAll"; // 삭제가 완료된 후, 목록페이지로 리턴
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {

		HttpSession session = req.getSession();

		MemberVO login = service.login(vo);

		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("member", login);
			return "/login";
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/idCheck.do", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String idCheck(HttpServletRequest request) {
		String userid = request.getParameter("userid");
		int result = service.idCheck(userid);
		return Integer.toString(result);
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {

		session.invalidate();

		return "redirect:/";
	}
}
