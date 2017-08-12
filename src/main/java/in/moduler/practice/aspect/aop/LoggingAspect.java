package in.moduler.practice.aspect.aop;

import net.sf.ehcache.Element;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.cache.Cache;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.util.Assert;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Aspect
public class LoggingAspect {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private EhCacheCacheManager cacheManager;

    @Before("execution(* in.moduler.practice.aspect.controller.CustomerBoImpl.*(..))")
    public void logBefore(JoinPoint joinPoint) {
        System.out.println("logBefore() is running!");
        System.out.println("hijacked : " + joinPoint.getSignature().getName());
        System.out.println("******");
    }

    /**
     * 캐싱 메뉴 테스트
     *
     * @param
     * @return
     */
    @Before("execution(* com.prot.web.controller.HelloWorldController.*(..))")
    public void menuCacheBefore(JoinPoint joinPoint) {
        logger.debug("menuCacheBefore****() is running!");
        logger.debug("thisMethodNameing****" + joinPoint.getSignature().getName());

        Cache cache = cacheManager.getCache("normal");
        logger.debug("CckeyIsNull::"+cache.get("k1"));
        if(cache.get("k1") == null){
            /* At first Connection DB to selecting menu-data  */
            Map<String, String> mapCc = new HashMap<String,String>();
            mapCc.put("w","World of Peace!!!");
            Element newElement = new Element("kk",mapCc);
            cache.put("k1",newElement);
        }
        Cache.ValueWrapper CcKey = cache.get("k1");
        Element oo = (Element)CcKey.get();
        Map<String, Object> cMap =  (Map<String, Object>)oo.getObjectValue();
        logger.debug("[AOP-LEVEL]ggggggggglogger:::"+cMap.get("w"));

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        request.setAttribute("w", cMap);
    }
}