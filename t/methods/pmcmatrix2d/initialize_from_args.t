my $tests := Test::PMCMatrix2D::InitializeFromArgs.new();
$tests.suite.run;

class Test::PMCMatrix2D::InitializeFromArgs is Pla::Methods::InitializeFromArgs {
    INIT {
        use('UnitTest::Testcase');
        use('UnitTest::Assertions');
    }

    has $!factory;
    method factory() {
        unless pir::defined__IP($!factory) {
            $!factory := Pla::MatrixFactory::PMCMatrix2D.new();
        }
        return $!factory;
    }
}
