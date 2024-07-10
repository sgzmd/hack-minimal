<<__EntryPoint>>
async function main(): Awaitable<void> {
  require_once(__DIR__.'/../vendor/autoload.hack');
  \Facebook\AutoloadMap\initialize();

  // invoke SquareCalculator
    $numbers = vec[1, 2, 3, 4, 5];
    $calculator = new SquareCalculator($numbers);
    $squaredNumbers = $calculator->squareAll();
    \var_dump($squaredNumbers);
}