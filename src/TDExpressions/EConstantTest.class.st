Class {
	#name : #EConstantTest,
	#superclass : #TestCase,
	#category : #TDExpressions
}

{ #category : #tests }
EConstantTest >> testCreationWithClassCreationMessage [

	self
		assert: ((EConstant value: 5) evaluateWith: Dictionary new)
		equals: 5
]

{ #category : #tests }
EConstantTest >> testEvaluate [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	self
		assert: ((EConstant new value: 5) evaluateWith: Dictionary new)
		equals: 5
]

{ #category : #tests }
EConstantTest >> testNegated [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	self
		assert:
		((EConstant new value: 6) negated evaluateWith: Dictionary new)
		equals: -6
]

{ #category : #tests }
EConstantTest >> testPrinting [
	self assert: (EConstant value: 5) printString equals: '5'
]
