import sys
#input = sys.stdin.readline()

def main():
    N = int(input())
    A = list(map(int,sys.stdin.readline().split()))
    add, sub, mul, div = map(int,sys.stdin.readline().split())

    min_v = 1000000000
    max_v = -1000000000

    #덧셈카드 add장
    #뺄셈카드 sub장
    #곱셈카드 mul장
    #나눗셈카드 div장
    #남아있는 카드 그냥 있는대로 한 장씩 써가면서 dfs 탐색

    def cal(add, sub, mul, div, sum, idx):
        global max_v, min_v
        if idx == N:
            max_v = max(max_v, sum)
            min_v = min(min_v, sum)
        if add:
            cal(add-1, sub, mul, div, sum+A[idx], idx+1)
        if sub:
            cal(add, sub-1, mul, div, sum-A[idx], idx+1)
        if mul:
            cal(add, sub, mul-1, div, sum*A[idx], idx+1)
        if div:
            cal(add, sub, mul, div-1, int(sum/A[idx]), idx+1)

    cal(add, sub, mul, div, A[0], 1)
    #첫 호출: 각 연산자 카드의 수 와
    #일단 현재값은 수열의 첫번째 수인 A[0]
    #다음 수와 연산해야 하므로 인덱스는 1

    print(max_v)
    print(min_v)

if __name__ == "__main__":
    main()