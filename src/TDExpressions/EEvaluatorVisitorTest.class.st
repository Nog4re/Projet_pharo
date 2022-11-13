Class {
	#name : #EEvaluatorVisitorTest,
	#superclass : #TestCase,
	#category : #TDExpressions
}

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitConstantReturnsConstantValue [
	| constant result |
	constant := EConstant value: 6.
	result := constant accept: EEvaluatorVisitor new.
	self assert: result equals: 6.
]
