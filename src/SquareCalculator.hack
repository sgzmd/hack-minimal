use namespace HH\Lib\Vec;

final class SquareCalculator {
    private vec<int> $numbers;

    public function __construct(vec<int> $numbers) {
        $this->numbers = $numbers;
    }

    public function squareAll(): vec<int> {
        return Vec\map($this->numbers, $number ==> (int) $number ** 2);
    }
}