* 작업내용

-- 2023.12.31(일)


학생 stnt
학습관리
학급관리


게시판 소스 압축할것
- 컨버터 서비스 (dto, entity)
- 추상클래스 적용건

mariaDB 설치
IntelliJ 설치
Git 설치
OpenJDK 1.9 설치

Talend API Tester

@JsonProperty("user_email")
@JsonIgnore

@RestControllerAdvice
@ExceptionHandler(value={Exception.class})

Controller
@RequiredArgsContructor

config/DataBaseConfig.java
@Configuration

Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@EqualsAndHashCode(callSuper = true)

Entity

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity(name = "user")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Integer age;

    private String email;
}


        var postList = boardEntity.getPostList()
            .stream()
            .map(postConverter::toDto)
            .collect(Collectors.toList());

    @ManyToOne
    @JsonIgnore
    @ToString.Exclude
    @JoinColumn(name = "board_id")
    private BoardEntity boardEntity; // board+ _id => board_id

@PostConstruct


- contentType: 'application/json', // JSON 형식으로 데이터 전송

$.ajax({
    url: '/api/account/login',
    method: 'POST',
    contentType: 'application/json', // JSON 형식으로 데이터 전송
    dataType: 'json', // 받아오는 데이터 타입을 JSON으로 설정
    data: JSON.stringify({ id: username, password: password }), // 데이터를 JSON 문자열로 변환하여 전송
    complete: function (xhr, status) {
        if (xhr.status == 200) {
            alert("로그인 성공")
        } else {
            alert("로그인 실패")
        }
    }
});



cookie.setHttpOnly(true); // => 브라우저에서 쿠키값을 축출할 수 없게 설정하는 코드.



@GetMapping("/me")
public UserDto me(
    HttpServletRequest httpServletRequest,

    @CookieValue(name = "authorization-cookie", required = false)
    String authorizationCookie
){
...
}


@GetMapping("/me2")
public UserDto me2(
    @RequestHeader(name = "authorization", required = false)
    String authorizationHeader
) {
    log.info("authorizationHeader : {}", authorizationHeader);
    var optionalUserDto = userRepository.findById(authorizationHeader);
    return optionalUserDto.get();
}



-- 2024.01.01 (월)

@MappedSuperclass
@Data
@SuperBuilder
public class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
}


@SuperBuilder
@Data
@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "account")
public class AccountEntity extends BaseEntity {
}




@Configuration
@EntityScan(basePackages = "org.delivery.db")
@EnableJpaRepositories(basePackages = "org.delivery.db")
public class JpaConfig {
}


