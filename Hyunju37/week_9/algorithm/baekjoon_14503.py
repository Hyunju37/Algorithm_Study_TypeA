def main():
    N, M = map(int, input().split())
    r, c, d = map(int, input().split())
    room = [list(map(int, input().split())) for _ in range(N)]
    # 0: 아직 청소되지 않은 빈 칸
    # 1: 벽
    # 2: 청소 완료된 칸

    def neighbors(x, y, N, M):
        directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        neighbors = []
        for dx, dy in directions:
            nx, ny = x + dx, y + dy
            if 0 <= nx < N and 0 <= ny < M:
                neighbors.append(nx, ny)
        return neighbors


    while True:
        if room[r][c] == 0:
            room[r][c] = 2
        if 0 in neighbors(r, c, N, M):
            



if __name__ == "__main__":
    main()