classdef InterpTests < matlab.unittest.TestCase
    
    methods (Test)
        function testNumInterp(testCase)
            actSolution = interpretor(NumC(5.0), topenv());
            testCase.verifyEqual(actSolution.num, 5.0);
        end
        function testStrgInterp(testCase)
            actSolution = interpretor(StrgC("Test"), topenv());
            testCase.verifyEqual(actSolution.str, "Test");
        end
    end

end