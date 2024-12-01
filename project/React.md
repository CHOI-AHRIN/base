# 전체 함수 흐름 --> 함수형 컴포넌트

## 1. 초기화 및 상태관리
 - useState를 사용하여 컴포넌트에서 필요한 상태를 선언함   
 - 이후 useEffect를 통해 컴포넌트가 로드될 때 API 호출함 

예) const [challenges, setChallenges] = useState([]); // 챌린지 목록

## 2. 함수 호출

## 3. 함수 호출 내에서도 흐름이 있음 > 여러 API 호출할 때, 데이터 간의 의존 관계가 있는 경우에는 반드시 순서를 보장하여야 함


----------------------------------------------------------------------------------------
# 비동기 함수
비동기 코드는 작업이 완료될 때까지 기다리지 않고 다음 코드를 실행
예) 네트워크 요청(API 호출)은 시간이 걸리지만, JavaScript는 다른 작업을 중단하지 않고 계속 실행

## async/await
: JavaScript에서 비동기 코드를 동기적으로 작성하는 방식을 제공하는 문법
 - async: 비동기 함수를 정의하고, 항상 Promise를 반환함
 - await: Promise가 처리(resolve 또는 reject)될 때까지 기다리고, 완료된 값을 반환함
 - async/await의 목표: 비동기 작업을 더 간결하고 동기 코드처럼 작성할 수 있게 함


await는 Promise가 완료될 때까지 기다리며, await로 함수가 중단된 동안, 다른 작업이 실행됨 (4. 다음 작업 실행)
### 예제
async function example() {
    console.log("1. 작업 시작");

    const data = await new Promise((resolve) => {
        setTimeout(() => resolve("2. 비동기 작업 완료"), 2000);
    });

    console.log(data); // "2. 비동기 작업 완료"
    console.log("3. 작업 종료");
}
example();
console.log("4. 다음 작업 실행");

### 출력결과
1. 작업 시작
4. 다음 작업 실행
2. 비동기 작업 완료
3. 작업 종료
