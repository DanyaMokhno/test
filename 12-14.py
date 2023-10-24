# s = 0
# a = int(input())
# for i in range(a, 51):
#     s += i**2
# print(s)

# N = int(input())
# k = 1
# while N >= 5**k:
#     k += 1
# print(k)

# a = int(input())
# k = 1
# s = 1
# while s+1/(k+1) < a:
#     k += 1
#     x = 1 / k
#     s += x
# print(k,s)





N = int(input())
print('N = ', N)

K = N**2
S = 1
while True:
    # K -= 1
    S = 1
    for i in range(2,K):
        S = S + 1/i
    print(f"K = {K}, S = {S}")
    if S > N:
        break
    else:
        K-=1

print()
print(f"K = {K}, S = {S}")