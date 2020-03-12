classdef InterpVarsTests < matlab.unittest.TestCase
    
    methods (Test)
        function testSimpleVars(testCase)
            arg = VarsC([IdC("x"), 1;], IdC("x"));
            actSolution = interpretor(arg, topenv());
            testCase.verifyEqual(actSolution.num, 1);
        end
        function testVars(testCase)
            arg = VarsC([IdC("x"), 1;
                IdC("y"), 3], IdC("y"));
            actSolution = interpretor(arg, topenv());
            testCase.verifyEqual(actSolution.num, 1);
        end
    end
end

