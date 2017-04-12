#R language sample - sin()

EDISON 시뮬레이션 SW 개발자를 위한 1개의 입력 파일 읽어, sin 그래프를 그리는 R언어 예제 파일입니다.

```
run.r       // 실행 R 스크립트 파일
input.dat   // 입력 파일

```

다음 수식의 변수들을 입력으로 받으며, 입력 변수는 a,b,c,d 총 4개 입니다.

$$
y = a * sin(bx+c)+d
$$


입력 파일의 경우에는 변수와 값 구분자를 ' = '을 사용하였으며, 변수와 변수 사이를 구분하기 위해 ' ;\n '를 사용하였습니다. 파일로 입력을 받으며, 샘플 입력 파일은 아래와 같으며, **input.dat** 로 저장되어 있습니다.

```
a = 1 ;
b = 0.4 ;
c = -0.5 ;
d = 0.3 ;
```


본 예제는 ./[실행파일명] -[옵션] [입력 파일 경로]로 실행시 옵션 뒤에 입력된 경로의 입력 파일을 읽고, 입력된 변수로 sin 함수 그래프를 그리는 예제 입니다.

결과 파일은 result 폴더에 result.png 파일로 저장됩니다.

## 설치하기

zip 파일을 다운로드 받아 압축을 풀거나 ```git clone``` 명령어를 이용하여, 프로젝트를 가져올 수 있습니다.

```
$ git clone git@github.com:sp-edison/r_example1.git
```

다운로드가 완료되면, ```r_example1``` 폴더가 생성되며, 실행 스크립트 파일과 입력파일이 있습니다.


