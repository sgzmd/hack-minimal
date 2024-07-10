use function Facebook\FBExpect\expect;
use type Facebook\HackTest\HackTest;

final class SquareCalculatorTest extends HackTest {
    public function testSquareAll(): void {
        $numbers = vec[1, 2, 3, 4, 5];
        $calculator = new SquareCalculator($numbers);
        $squaredNumbers = $calculator->squareAll();
        expect($squaredNumbers)->toBeSame(vec[1, 4, 9, 16, 25]);
    }
}