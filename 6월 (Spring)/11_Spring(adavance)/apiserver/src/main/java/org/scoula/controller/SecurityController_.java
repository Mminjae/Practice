package org.scoula.controller;

import lombok.extern.log4j.Log4j2;
import org.scoula.security.account.domain.CustomUser;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@Log4j2
@RestController
@RequestMapping("/security")
public class SecurityController_ {

    // 모두 접근 가능
    @GetMapping("/all")
    public String doAll() {
        log.info("doAll() - 누구나 접근 가능");
        return "누구나 접근 가능한 API입니다.";
    }

    // ROLE_MEMBER 권한 필요
    @GetMapping("/member")
    public String doMember(
            Principal principal,
            Authentication authentication,
            @AuthenticationPrincipal CustomUser customUser
    ) {
        log.info("doMember() - principal: {}", principal);
        if (principal != null) log.info("principal.getName(): {}", principal.getName());
        if (authentication != null) {
            log.info("UserDetails Authorities: {}", authentication.getAuthorities());
            log.info("UserDetails Username: {}", authentication.getName());
        }
        if (customUser != null) {
            log.info("CustomUser 정보: {}", customUser);
            log.info("CustomUser Username: {}", customUser.getUsername());
            log.info("CustomUser Authorities: {}", customUser.getAuthorities());
        }
        return "ROLE_MEMBER 권한이 있어야 접근 가능한 API입니다.";
    }

    // ROLE_ADMIN 권한 필요
    @GetMapping("/admin")
    public String doAdmin(@AuthenticationPrincipal CustomUser customUser) {
        log.info("doAdmin() - CustomUser: {}", customUser);
        if (customUser != null) {
            log.info("CustomUser Username: {}", customUser.getUsername());
            log.info("CustomUser Authorities: {}", customUser.getAuthorities());
        }
        return "ROLE_ADMIN 권한이 있어야 접근 가능한 API입니다.";
    }
}
