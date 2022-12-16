
void main(List<String> arguments) {
// Составьте программу, котораЯ вычисляет сумму чисел от 1 до n.значение n вводится с клавиатуры.
int numUser = 9;

int sum = 0;

sumNum(int n) {
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

print(sumNum(numUser));

}
