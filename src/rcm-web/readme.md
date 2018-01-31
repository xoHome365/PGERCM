验证( authentication) ”和“(授权) authorization ”


2.5 Spring Security 模块

在Spring3.0中，Spring Security将代码划分到不同的jar中，这使得不同的功能模块和第三方依赖显得更加清晰。如果你使用maven来构建项目，下面可能是你将会加入到pom.xml中的模块。即使你不使用maven，我们也建议你查阅一下pom.xml文件，从而了解其对第三方的依赖和版本问题。此外，一个比较好的想法是查看案例应用中引入的类库。
Core - spring-security-core.jar
包含核心的 authentication 和authorization 的类和接口，远程支持和基础配置API。任何使用 Spring Security的应用都需要引入这个jar。支持本地应用，远程客户端，method级别的安全和JDBC用户配置。主要包含的top package为：
* org.springframework.security.core-->核心
* org.springframework.security.access-->访问，即authorization 的作用
* org.springframework.security.authentication-->验证
* org.springframework.security.provisioning-->配置

Remoting - spring-security-remoting.jar
提供与Spring Remoting整合的支持，你并不需要这个除非你需要使用Spring Remoting写一个远程客户端。主包为： org.springframework.security.remoting.
Web - spring-security-web.jar
包含filters和相关web安全的基础代码。如果我们需要使用 Spring Security 进行web安全验证和基于URL的访问控制。主包为： org.springframework.security.web.
Config - spring-security-config.jar
包含security namespace的解析代码，如果你使用Spring Security XML进行安全配置，你需要引入这个jar。主包为： org.springframework.security.config。我们不应该在代码中直接使用这个jar中的类。
LDAP - spring-security-ldap.jar
LDAP验证和配置代码。如果你需要进行LDAP验证或者管理LDAP user entries。top package为： org.springframework.security.ldap.
ACL - spring-security-acl.jar
特定domain对象的ACL(访问控制列表)实现。使用其可以对特定对象的实例进行一些安全配置。顶级包为： org.springframework.security.acls.
CAS - spring-security-cas.jar
Spring Security CAS客户端集成。如果你需要使用一个single sign on服务器进行Spring Security web安全验证，需要引入。顶级包为： org.springframework.security.cas.
OpenID - spring-security-openid.jar
OpenId web验证支持。基于一个外部OpenId服务器对用户进行验证。顶级包为： org.springframework.security.openid，需要使用 OpenID4Java.
一般情况下，spring-securit-core和spring-securit-config都会引入，在web开发中，我们通常还会引入spring-security-web。




参考：
* [SPRING SECURITY 4官方文档中文翻译与源码解读](http://www.tianshouzhi.com/api/tutorials/spring_security_4/250)




